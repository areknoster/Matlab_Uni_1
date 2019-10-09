function [R1, R2, R3, I1, I2, I3] = generateRandomVectorSet(N)
%GENERATERANDOMVECTORSET Summary of this function goes here
%   Detailed explanation goes here
R1 = generateRandomVector(N-1);
R2 = generateRandomVector(N);
R3 = generateRandomVector(N-1);
I1 = generateRandomVector(N-1);
I2 = generateRandomVector(N);
I3 = generateRandomVector(N-1);
end

