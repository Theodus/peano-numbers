function str = nat2str(n)
%PEANO2STR Summary of this function goes here
%   Detailed explanation goes here
  if ~isa(n, 'Nat')
    error('Succ must be created from a Nat')
  end

  if n.isZero()
    str = 'Zero';
  else
    str = strcat('S(', nat2str(n.pred()), ')');
  end
end
