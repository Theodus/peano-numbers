% addition
test(@plus, 0, 0, 0)
test(@plus, 0, 1, 1)
test(@plus, 1, 0, 1)
test(@plus, 1, 1, 2)
test(@plus, 10, 5, 15)
test(@plus, 5, 10, 15)
% subtraction
test(@minus, 0, 0, 0)
test(@minus, 1, 0, 1)
test(@minus, 0, 1, 'Cannot subtract from Zero') % TODO better error message
test(@minus, 10, 5, 5)
test(@minus, 5, 10, 'Cannot subtract from Zero')
% multiplication
test(@mtimes, 0, 0, 0)
test(@mtimes, 0, 1, 0)
test(@mtimes, 1, 0, 0)
test(@mtimes, 1, 1, 1)
test(@mtimes, 10, 5, 50)
test(@mtimes, 5, 10, 50)
% TODO division

% comparison operations
a = Zero;
b = Succ(Zero);
assert_not = @(b) assert(~b);
% le
assert(a < b)
assert_not(b < a)
% gt
assert(b > a)
assert_not(a > b)
% le
assert(a <= a)
assert(a <= b)
assert_not(b <= a)
% ge
assert(a >= a)
assert(b >= a)
assert_not(a >= b)
% ne
assert(a ~= b)
assert_not(a ~= a)
% eq
assert(a == a)
assert_not(a == b)

% utility functions
assert(int2nat(0) == Zero)
assert(int2nat(1) == Succ(Zero))
assert(int2nat(2) == Succ(Succ(Zero)))

assert(nat2str(Zero) == 'Zero');
assert(nat2str(int2nat(5)) == 'S(S(S(S(S(Zero)))))');

function test(f, a, b, c)
  as_nat = @(f, a, b) nat2int(f(int2nat(a), int2nat(b)));
  t = @(f, a, b, c) assert(as_nat(f, a, b) == c);
  if ischar(c)
    try
      t(f, a, b, c);
      error('Error expected');
    catch e
      assert(strcmp(e.message, c));
    end
  else
    t(f, a, b, c);
  end
end
