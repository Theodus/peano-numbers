classdef Succ < Nat
  % Succ represents the Successor of a number n according to the Peano
  % axioms.
  properties
    N
  end
  methods (Static)
    function b = isZero()
      b = false;
    end
  end
  methods
    function self = Succ(n)
      if ~isa(n, 'Nat')
        error('Succ must be created from a Nat')
      end
      self.N = n;
    end
    function n = succ(self)
      n = Succ(self);
    end
    function n = pred(self)
      n = self.N;
    end
    function n = plus(self, other)
      % a + 0 = a
      % a + S(b) = S(a + b)
      if other.isZero()
        n = self;
      else
        n = self.N + other.succ();
      end
    end
    function n = minus(self, other)
      % a - 0 = a
      % S(a) - S(b) = a - b
      if other.isZero()
        n = self;
      else
        n = self.N - other.N;
      end
    end
    function n = mtimes(self, other)
      % a * 0 = 0
      % a * S(b) = a + (a * b)
      if other.isZero()
        n = other;
      else
        n = self + (self * other.pred());
      end
    end
  end
end
