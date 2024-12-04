function fMeasure = FMeasure(predicted, actual)
    precision = Precision(predicted, actual);
    recall = Recall(predicted, actual);
    fMeasure = 2 * (precision * recall) / (precision + recall);
end