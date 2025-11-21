% GAUSS ELIMINATION METHOD (with Partial Pivoting)

clear;
clc;

fprintf('GAUSS ELIMINATION METHOD:\n\n');

A = input("Enter coefficient matrix A: ");
b = input("Enter RHS vector b: ");

n = length(b);
Ab = [A b];

% Forward Elimination with Partial Pivoting
for i = 1:n-1

    % Pivoting
    [~, maxIndex] = max(abs(Ab(i:n, i)));
    maxIndex = maxIndex + (i - 1);
    
    if maxIndex ~= i
        Ab([i, maxIndex], :) = Ab([maxIndex, i], :);
    end
end
    
% Elimination
for i = 1:n-1
    for j = i+1:n
        factor = Ab(j, i) / Ab(i, i);
        Ab(j, i:n+1) = Ab(j, i:n+1) - factor * Ab(i, i:n+1);
    end
end

% Back Substitution
x = zeros(n, 1);
x(n) = Ab(n, end) / Ab(n, n);

for i = n-1:-1:1
    x(i) = (Ab(i, end) - Ab(i, i+1:n) * x(i+1:n)) / Ab(i, i);
end

fprintf("\nSolution Vector X: \n");
disp(x);
