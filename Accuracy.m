function accuracy = Accuracy(predicted, actual)
    % Ensure matrices are of the same size
    if size(predicted) ~= size(actual)
        error('The size of predicted and actual matrices must be the same.');
    end
    
    % Calculate element-wise accuracy
    correct = sum(predicted == actual, 'all');  % Sum all correct predictions
    accuracy = correct / numel(actual);         % Divide by total number of elements
end
