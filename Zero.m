classdef Zero < Nat
  %ZERO Summary of this class goes here
  %   Detailed explanation goes here
  methods (Static)
    function b = isZero()
      b = true;
    end
  end
  methods
    function pred(~)
      error('Zero has no predecessor');
    end
    function n = plus(~, other)
      n = other;
    end
  end
end
