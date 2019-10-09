function [M] = basicGEPP(M)
%BASICGEPP Summary of this function goes here
%   Detailed explanation goes here
N = size(M, 1);
p = {1, 1};
while p{2} <= N
    %Pivot
    [piv, pivIndex] = max(abs(M(p{1}:end, p{2})));
    pivIndex = pivIndex +  p{1} - 1;
    if piv == 0
        p{2} = p{2} + 1;
        continue
    end
    %Rows swap
    if pivIndex ~= p{1}
        M([p{1}, pivIndex],:) = M([pivIndex, p{1}],:); 
    end
    %elimination
    piv = M(p{1}, p{2});
    subV = M(p{1} + 1: end, p{2}) / piv;
    subM = subV .* M(p{1}, :);
    M(p{1} + 1: end, :) =  M(p{1} + 1: end, :) - subM;
    %next step
    p{1} = p{1} + 1;
    p{2} = p{2} + 1;
end
end

