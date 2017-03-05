classdef Zero < Nat
  % Zero represents the base number in the set of real numbers according to
  % the Peano axioms.
  methods (Static)
    function b = isZero()
      b = true;
    end
  end
  methods
    function n = succ(self)
      n = Succ(self);
    end
    function pred(~)
      error('Zero has no predecessor');
    end
    function n = plus(~, other)
      % 0 + a = a
      n = other;
    end
    function n = minus(~, other)
      % 0 - 0 = 0
      % 0 - a = Undefined
      if other.isZero()
        n = Zero;
      else
        error('Cannot subtract from Zero');
      end
    end
    function n = mtimes(self, ~)
      % 0 * a = 0
      n = self;
    end
    function n = mrdivide(self, other)
      if other.isZero()
        error('Cannot divide by Zero');
      end
      n = self;
    end
  end
end
