function M = generateRandomExample(N, linearDependend)
%GENERATERANDOMEXAMPLE Summary of this function goes here
%   Detailed explanation goes here
[S, x] = generateRandomVectorSet(N);
if nargin == 2 && linearDependend == true
    S{1}([1 2]) = [0;1];
    S{4}([1 2]) = [0;1];
    S{2}([2 3]) = [1; 1];
    S{5}([2 3]) = [1; 1];
    S{3}([2 3]) = [1; 0];
    S{6}([2 3]) = [1; 0];
end
R = generateTriDiagonal(S{1}, S{2}, S{3});
I = generateTriDiagonal(S{4}, S{5}, S{6});
M = [R, -I; I, R];
M = [M, x];
end

