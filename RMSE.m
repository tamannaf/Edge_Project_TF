function rmseValue = RMSE(predicted, actual)
    differences = predicted - actual;
    squaredDifferences = differences.^2;
    meanSquaredError = mean(squaredDifferences, 'omitnan'); % ignore NaNs
    rmseValue = sqrt(meanSquaredError);
end
