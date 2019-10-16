function [error] = solution_check(M,x)
%GEEP_CHECK checks the accuracy of linear system solution.
%   M is Nx(N+1) matrix
%   x is the computed solution to M matrix
%   error is vertical N vector which is the substraction of constant terms
%   of solution and the value of constant terms, should x be the M
%   solution.
    error = M(:, 1:end-1) * x - M(:, end);
end

