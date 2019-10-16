K = 25;
data = cell(K, 6);
Size = 20;
increment = 20;
for i = 1:K
    data{i, 1} = Size .* 2; % Matrix size
    data{i, 2} = generateRandomExample(Size); %matrix
    [data{i, 3}, data{i, 4}] = GEPPv1(data{i, 2}); %result and elapsed time
    data{i, 5} = solution_check(data{i, 2}, data{i, 3}); %actual result error
    data{i,6} = max(abs(data{i, 5})); % maximal error
    Size = Size + increment;
end
TD = data(:, [1 4 6]);
T = cell2table(TD);
T.Properties.VariableNames = ["matrixSize" "elapsed_time" "maximum_error"];
disp(T)