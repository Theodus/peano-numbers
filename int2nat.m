function n = int2nat(i)
% int2nat creates a Nat from an integer
  if i < 0
    error('Nat cannot be created from a negative number')
  end
  
  n = Zero;
  for a=1:i
    n = Succ(n);
  end
end
