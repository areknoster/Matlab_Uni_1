numberOfSamples = 40;
firstMatrixSize = 10;
increment = 20;

data_v1 = generateData(numberOfSamples, firstMatrixSize, increment, @GEPPv1);
data_v2 = generateData(numberOfSamples, firstMatrixSize, increment, @GEPPv2);

LinearyDependent = generateRandomExample(10, true);
GEPPv2(LinearyDependent);
