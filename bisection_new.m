% Bisection Method with Plot in MATLAB
clc; clear; close all;

f = @(x) x.^3-7*x.^2+14*x-6;  
a = 0;
b = 1;
tol = 1e-6;
max_iter = 50;

if f(a)*f(b) > 0
    error('Function has the same sign at a and b. Choose different interval.');
end

fprintf(' Iter\t     a\t\t     b\t\t     c\t\t f(c)\n');
fprintf('---------------------------------------------------------\n');

% For plotting
x_vals = linspace(a-1, b+1, 500);  % Range for function plotting
y_vals = f(x_vals);

figure;
plot(x_vals, y_vals, 'b-', 'LineWidth', 1.5); hold on;
plot([a b], [0 0], 'k--'); % x-axis
xlabel('x'); ylabel('f(x)');
title('Bisection Method Visualization');
grid on;

for iter = 1:max_iter
    % Midpoint
    c = (a + b)/2;
    
    % Function value at midpoint
    fc = f(c);
    
    % Print iteration details
    fprintf('%3d\t%10.6f\t%10.6f\t%10.6f\t%10.6f\n', iter, a, b, c, fc);
    
    % Plot current interval and midpoint
    plot([a b], [0 0], 'r-o', 'LineWidth', 1.2); % Interval
    plot(c, fc, 'ko', 'MarkerFaceColor', 'g');  % Midpoint
    
    % Check convergence
    if abs(fc) < tol || (b - a)/2 < tol
        fprintf('\nApproximate root = %.6f found after %d iterations.\n', c, iter);
        plot(c, fc, 'gp', 'MarkerSize', 12, 'MarkerFaceColor', 'g'); % Final root
        break;
    end
    
    % Update interval
    if f(a)*fc < 0
        b = c;
    else
        a = c;
    end
end

if iter == max_iter
    fprintf('\nMethod did not converge within maximum iterations.\n');
end
