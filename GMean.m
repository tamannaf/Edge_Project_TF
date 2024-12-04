function gMean = GMean(predicted, actual)
    recall = Recall(predicted, actual);
    specificity = sum((predicted == 0) & (actual == 0)) / sum(actual == 0);
    gMean = sqrt(recall * specificity);
end