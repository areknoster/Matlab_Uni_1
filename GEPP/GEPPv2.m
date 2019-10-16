function [x, elTime] = GEPPv2(M)
%GEPPV2 does gauss elimination with partial pivoting, optimized for
%exercise case - a matrix with three tri-diagonals. The result is the
%solution of system of linear equations within complex field.
%   M is 2n x (2n + 1) matrix (the second one will not include
%   linear system solution in the end)
%   x is the result vertical vector of 2n size
%   elTime is the time needed to compute the function.
%   it is around 50% faster than the version without optimization.
[N1, N2] = size(M);
if N1 ~= N2 - 1 || mod(N1, 2) ~= 0 || N1 < 10
   error("Matrix does not fit requirements");
end
tic %timer start
range = 1:N1/2+2; %The range is optimized for given task
while length(range) ~= 1
    % Find pivot
    [piv, pivIndex] = max(abs(M(range, range(1))));
    pivIndex = pivIndex + range(1) - 1;
    if piv == 0 
        error("equations are lineary dependent.");
    end
    % Rows swap
    if pivIndex ~= range(1)
        M([range(1), pivIndex],:) = M([pivIndex, range(1)],:); 
    end
    % Elimination
    piv = M(range(1), range(1));
    subV = M(range(2:end), range(1)) / piv;
    subM = subV .* M(range(1), range(1):end);
    M(range(2: end), range(1):end) =  M(range(2: end), range(1):end) - subM;
    %M(range(2:end), range(1)) = 0;
    %next step
    if range(end) == N1
        range(1) = [];
    else
       range = range + 1; 
    end
end
% Clear upper matrix
p = N1;
while p >= 1
    piv = M(p, p);
    xVal = M(p, end);
    subV = (M(1: p - 1, p) ./ piv) .* xVal;
    M(1:p - 1,[p end]) = [zeros(p -1,1), M(1:p - 1, end) - subV];
    M(p, [p end]) = M(p, [p end]) ./ piv;
    p = p - 1;
end
x = M(:, end);
elTime = toc; %timer stop
end

