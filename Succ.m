classdef Succ < Nat
  %SUCC Summary of this class goes here
  %   Detailed explanation goes here
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
    function n = pred(self)
      n = self.N;
    end
    function n = plus(self, other)
      if other.isZero()
        n = self;
      else
        n = self.N + Succ(other);
      end
    end
  end
end
