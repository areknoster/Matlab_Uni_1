function [S, y] = generateRandomVectorSet(N)
%GENERATERANDOMVECTORSET generates randomly the vectors which represents the diagonals of banded matrices for given task. 
%   The main diagonal is N sized.
%   x is the vector of constant terms.
S{1} = rand(N-1, 1);
S{2} = rand(N,   1);
S{3} = rand(N-1, 1);
S{4} = rand(N-1, 1);
S{5} = rand(N,   1);
S{6} = rand(N-1, 1);
y =  rand(2*N,   1);
end

