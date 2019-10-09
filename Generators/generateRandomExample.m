function M = generateRandomExample(N)
%GENERATERANDOMEXAMPLE Summary of this function goes here
%   Detailed explanation goes here
[R1, R2, R3, I1, I2, I3] = generateRandomVectorSet(N);
R = generateTriDiagonal(R1, R2, R3);
I = generateTriDiagonal(I1, I2, I3);
M = [R, -I; I, R];
end

