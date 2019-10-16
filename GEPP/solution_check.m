function [error] = solution_check(M,x)
%GEEP_CHECK Summary of this function goes here
%   Detailed explanation goes here
    error = M(:, 1:end-1) * x - M(:, end);
end

