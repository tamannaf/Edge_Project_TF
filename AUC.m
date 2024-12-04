function auc = AUC(predicted, actual)
    % Convert inputs to column vectors if they are not already
    predicted = predicted(:);  % Convert to column vector
    actual = actual(:);        % Convert to column vector

    % Ensure 'actual' and 'predicted' are the same length
    if length(predicted) ~= length(actual)
        error('Predicted and actual sizes must match for AUC calculation.');
    end

    % Binarize 'actual' if it’s not binary already
    % You can adjust the threshold value depending on your data
    if ~all(ismember(actual, [0, 1]))
        threshold = median(actual);  % Example threshold at the median
        actual = actual >= threshold;  % Convert to binary values (0 or 1)
    end

    % Calculate ROC and AUC using perfcurve
    try
        [~, ~, ~, auc] = perfcurve(actual, predicted, 1);
    catch ME
        error('Error in AUC calculation: %s', ME.message);
    end
end
