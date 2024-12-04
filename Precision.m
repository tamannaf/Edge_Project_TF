function precision = Precision(predicted, actual)
    truePositives = sum((predicted == 1) & (actual == 1));
    falsePositives = sum((predicted == 1) & (actual == 0));
    precision = truePositives / (truePositives + falsePositives);
end