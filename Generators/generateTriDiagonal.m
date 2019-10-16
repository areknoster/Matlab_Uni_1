function M = generateTriDiagonal(V1, V2, V3)
%CREATETRIDIAGONAL Creates tridiagonal matrix out of six vectors.
%   V1, V2, V3 must be N-1, N, N-1 length vectors respectively. The output
%   matrix is NxN size.
if length(V2) - length(V1) ~= 1 && length(V3) - length(V1) ~= 1
   error("Incorrect vector sizes!");
end
M = diag(V2);
M(2:end, 1:end-1) = M(2:end, 1:end-1) + diag(V1);
M(1:end -1, 2:end) = M(1:end -1, 2:end) + diag(V3);
end

