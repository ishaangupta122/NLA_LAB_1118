% BISECTION METHOD

clear;
clc

f = @(x) x^3 + 2*x^2 - 3*x - 1;  % Define the function
a = 1;                           % Interval start
b = 2;                           % Interval end
tol = 10^-2;                      % Tolerance
count = 0;                       % Iteration counter

while (abs(b - a)/2 >= tol)
    error = (b - a)/2;
    p = (a + b)/2;               % Midpoint
    count = count + 1;
    
    fa = sign(f(a));
    fb = sign(f(b));
    fp = sign(f(p));
    
    if (fa * fp < 0)
        b = p;
    else
        a = p;
    end
    
    % Display iteration number and current midpoint (optional)
    fprintf('Iteration %d: p = %.4f, error = %.4f\n', count, p, error);
end

fprintf('Approximate root: %.4f\n', p);
fprintf('Total iterations: %d\n', count);