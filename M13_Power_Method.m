% POWER METHOD FOR FINDING THE DOMINANT EIGENVALUE AND EIGENVECTOR

clear;
clc;

fprintf('POWER METHOD:\n\n');

A = input("Enter The Matrix: ");
X = input("Enter Initial Approximate: ");

for k = 1:100
    X_old = X;
    Y = A*X;
    lambda = max(abs(Y));
    X = Y / lambda;
    if norm(X - X_old, inf) < 0.001
        break;
    end
end

fprintf('\nDominant Eigenvalue: %f\n', lambda);
fprintf('Corresponding Eigenvector:\n');
disp(X);