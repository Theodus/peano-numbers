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
    %n = mrdivide(self, other)
  end
  methods
    function disp(self)
      fprintf('\t%s\n', nat2str(self));
    end
    function b = lt(self, other)
      b = lt(nat2int(self), nat2int(other));
    end
    function b = gt(self, other)
      b = gt(nat2int(self), nat2int(other));
    end
    function b = le(self, other)
      b = le(nat2int(self), nat2int(other));
    end
    function b = ge(self, other)
      b = ge(nat2int(self), nat2int(other));
    end
    function b = ne(self, other)
      b = ne(nat2int(self), nat2int(other));
    end
    function b = eq(self, other)
      b = eq(nat2int(self), nat2int(other));
    end
  end
end
