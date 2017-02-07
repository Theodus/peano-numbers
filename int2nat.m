function p = int2nat(i)
%INT2PEANO Summary of this function goes here
%   Detailed explanation goes here
  % TODO check if i is rational
  p = i2p(i, Zero);
end

function p = i2p(i, n)
  if i == 0
    p = n;
  else
    p = i2p(i-1, Succ(n));
  end
end
