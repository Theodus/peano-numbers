function i = nat2int(n)
%NAT2INT Summary of this function goes here
%   Detailed explanation goes here
  if ~isa(n, 'Nat')
    error('Succ must be created from a Nat')
  end

  if n.isZero()
    i = 0;
  else
    i = 1 + nat2int(n.pred());
  end
end

