function recall = Recall(predicted, actual)
    truePositives = sum((predicted == 1) & (actual == 1));
    falseNegatives = sum((predicted == 0) & (actual == 1));
    recall = truePositives / (truePositives + falseNegatives);
end