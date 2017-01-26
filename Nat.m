classdef (Abstract) Nat
  % Nat is an Abstract class for natural numbers as defined by the Peano
  % axioms.
  methods (Abstract, Static)
    b = isZero()
    % Return true if this number is Zero and false otherwise.
  end
  methods
    n = succ(self)
    n = pred(self)
    n = plus(self, other)
    n = minus(self, other)
    n = mtimes(self, other)
    function disp(self)
      fprintf('\t%s\n', nat2str(self));
    end
  end
end
