classdef (Abstract) Nat
  % Nat is an Abstract class for natural numbers as defined by the Peano
  % axioms.
  methods (Abstract, Static)
    b = isZero()
  end
  methods (Abstract)
    n = succ(self)
    n = pred(self)
    n = plus(self, other)
    n = minus(self, other)
    n = mtimes(self, other)
  end
  methods
    function disp(self)
      fprintf('\t%s\n', nat2str(self));
    end
  end
end
