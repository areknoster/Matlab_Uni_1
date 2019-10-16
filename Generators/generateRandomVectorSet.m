function [S, y] = generateRandomVectorSet(N)
%GENERATERANDOMVECTORSET generates randomly the vectors which represents
%the diagonals of banded matrices for given task. The main diagonal is N sized. The x is the vector of constant
%terms
S{1} = generateRandomVector(N-1);
S{2} = generateRandomVector(N);
S{3} = generateRandomVector(N-1);
S{4} = generateRandomVector(N-1);
S{5} = generateRandomVector(N);
S{6} = generateRandomVector(N-1);
y =  generateRandomVector(2 * N);
end

