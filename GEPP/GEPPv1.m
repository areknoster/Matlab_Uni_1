function [x, elTime] = GEPPv1(M)
%BASICGEPP Summary of this function goes here
%   Detailed explanation goes here
tic
N = size(M, 1);
p = 1;

while p <= N
    % Find pivot
    [piv, pivIndex] = max(abs(M(p:end, p)));
    pivIndex = pivIndex + p - 1;
    if piv == 0 
        error("equations are lineary dependent.");
    end
    % Rows swap
    if pivIndex ~= p
        M([p, pivIndex],:) = M([pivIndex, p],:); 
    end
    % Elimination
    piv = M(p, p);
    subV = M(p + 1: end, p) / piv;
    subM = subV .* M(p, :);
    M(p + 1: end, :) =  M(p + 1: end, :) - subM;
    p = p + 1; %next step
end
% Clear upper
p = N;
while p >= 1
    piv = M(p, p);
    xVal = M(p, end);
    subV = (M(1: p - 1, p) ./ piv) .* xVal;
    M(1:p - 1,[p end]) = [zeros(p -1,1), M(1:p - 1, end) - subV];
    M(p, [p end]) = M(p, [p end]) ./ piv;
    p = p - 1;
end
x = M(:, end);
elTime = toc;
end

