function data = generateData(N, size, increment, GEPP_function)
%GENERATEDATA generates the data which serves for examination of efficiency
%and accuracy of GEPP algorithms.
%   Arguments:
%   N is the number of matrices which are to be examined
%   size is the size of first matrix
%   increment is the number by which each following matrix size is to be
%   expanded
%   GEPP_function is the function which is examined. It must return:
%       x vertical vector - the solution to 2Nx(2N+1) matrix
%       elapsedTime - the number, which represents time needed to compute
%       x
%   data is cellural table with "matrix_size", "matrix", "result",
%   "elapsed_time", "result_error_vector", "max_error" respectively.
data = cell(N+1, 7);
data(1, :) = {"matrix_size", "matrix", "result", "elapsed_time", "elapsed_time/N^3", "result_error_vector", "max_error"}; %#ok<CLARRSTR>
for i = 2:N+1
    data{i, 1} = size .* 2; % Matrix size
    data{i, 2} = generateRandomExample(size); %matrix
    [data{i, 3}, data{i, 4}] = GEPP_function(data{i, 2}); %result and elapsed time
    data{i, 5} = data{i, 4} / (data{i, 1} .^ 3); % elapsed_time/N^3
    data{i, 6} = solution_check(data{i, 2}, data{i, 3}); %actual result error
    data{i,7} = max(abs(data{i, 6})); % maximal error
    size = size + increment;
end
end

