function i = nat2int(n)
% nat2int creates an integer from a Nat
  if ~isa(n, 'Nat')
    error('integer must be created from a Nat')
  end

  %if n.isZero()
  %  i = 0;
  %else
  %  i = 1 + nat2int(n.pred());
  %end
  
  i = 0;
  while ~n.isZero()
    i = i + 1;
    n = n.pred();
  end
end
