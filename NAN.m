x = xlsread('F:\Datastreaming Reasearch\Data\data With Details\covertype\Covertype with Main Values.xlsx','A1:BB286048');
frac = 0.05;  % Fraction of current non-NaN's to set to NaN
f = find(~isnan(x));  % The non-NaN locations Finds the indices of all non-NaN values
n = numel(f);  % Number of non-NaN locations Calculates the number of non-NaN values.
r = randperm(n,floor(frac*n));  % Randomly pick frac of these non-NaN locations
x(f(r)) = NaN; %This introduces NaN values into the dataset at randomly chosen locations.
xlswrite('F:\Datastreaming Reasearch\Data\data With Details\covertype\covertype with 05% NaN value.xlsx',x);