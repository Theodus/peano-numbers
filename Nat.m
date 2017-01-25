classdef (Abstract) Nat
  %NAT Summary of this class goes here
  %   Detailed explanation goes here
  methods (Abstract, Static)
    b = isZero()
  end
  methods
    n = pred(self)
    n = plus(self, other)
    function disp(self)
      fprintf('\t%s\n', nat2str(self));
    end
  end
end
