function str = nat2str(n)
% nat2str creates a string representation of a Nat
  if ~isa(n, 'Nat')
    error('Succ must be created from a Nat')
  end
  
  %if n.isZero()
  %  str = 'Zero';
  %else
  %  str = strcat('S(', nat2str(n.pred()), ')');
  %end
  
  % preallocate string
  l = 4;
  while ~n.isZero()
    n = n.pred();
    l = l + 3;
  end
  str = char(zeros(1, l));
  
  str = strcat(str, repmat('S(', 1, (l-4)/3));
  str = strcat(str, 'Zero');
  str = strcat(str, repmat(')', 1, l - length(str)));
  str = string(str);
end
