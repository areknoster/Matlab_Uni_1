numberOfSamples = 50;
firstMatrixSize = 20;
increment = 20;

data_v2 = generateData(numberOfSamples, firstMatrixSize, increment, @GEPPv2);

LinearyDependent = generateRandomExample(10, true);
%Expected to throw an error
GEPPv2(LinearyDependent);
