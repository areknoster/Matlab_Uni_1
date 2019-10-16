function [S, x] = generateRandomVectorSet(N)
%GENERATERANDOMVECTORSET Summary of this function goes here
%   Detailed explanation goes here
S{1} = generateRandomVector(N-1);
S{2} = generateRandomVector(N);
S{3} = generateRandomVector(N-1);
S{4} = generateRandomVector(N-1);
S{5} = generateRandomVector(N);
S{6} = generateRandomVector(N-1);
x =  generateRandomVector(2 * N);
end

