
as_nat = @(f, a, b) nat2int(f(int2nat(a), int2nat(b)));
% addition
assert(as_nat(@plus, 0, 0) == 0)
assert(as_nat(@plus, 0, 1) == 1)
assert(as_nat(@plus, 1, 0) == 1)
assert(as_nat(@plus, 10, 5) == 15)
