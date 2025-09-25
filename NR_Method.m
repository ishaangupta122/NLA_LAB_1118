% NEWTON-RAPHSON METHOD

clear;
clc;

f = @(x) x^3 + 2*x^2 - 3*x - 1;   % Function
g = @(x) 3*x^2 + 4*x - 3;         % Derivative of the function

x0 = 1;                           % Initial guess
err = 5;                          % Initial error (set large)
tol = 10^(-4);                    % Tolerance for stopping criterion
i = 1;                            % Iteration counter

while err >= tol
    x = x0 - (f(x0) / g(x0));     % Newton-Raphson update formula
    err = abs(x - x0);            % Calculate current error
    x0 = x;                       % Update guess
    i = i + 1;                    % Increment iteration count
end

fprintf('Approximate root: %.6f\n', x);
fprintf('Total iterations: %d\n',i);