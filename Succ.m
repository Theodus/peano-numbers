classdef Succ < Nat
  % Succ represents the Successor of a number n according to the Peano
  % axioms.
  properties (Access = private)
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
      
      %if other.isZero()
      %  n = self;
      %else
      %  n = self.N + other.succ();
      %end
      
      n = self;
      b = other;
      while ~b.isZero()
        n = Succ(n);
        b = b.pred();
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
      
      %if other.isZero()
      %  n = other;
      %else
      %  n = self + (self * other.pred());
      %end
      
      if other.isZero()
        n = other;
        return
      end
      
      n = self;
      b = other.pred();
      while ~b.isZero()
        n = n + self;
        b = b.pred();
      end
    end
    function n = mrdivide(self, other)
      if other.isZero()
        error('Cannot divide by Zero')
      end
      
      n = Zero;
      a = self;
      while ~a.isZero()
        try
          a = a - other;
        catch
          break
        end
        n = Succ(n);
      end
    end
  end
end
