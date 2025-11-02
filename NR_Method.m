% NEWTON-RAPHSON METHOD

clear;
clc;

syms x;

fprintf('NEWTON-RAPHSON METHOD: \n\n');

f_sym = input('Enter the function: ');
f = matlabFunction(f_sym);

for i = -10:1:10
    if f(i) * f(i+1) < 0
        break;
    end
end

a = i;
b = i + 1;
tol = 0.0001;

if abs(f(a)) < abs(f(b))
    x0 = a;
else
    x0 = b;
end

g_sym = diff(f_sym, x);
g = matlabFunction(g_sym);

for i = 1:100
    x1 = x0 - f(x0)/g(x0);
    if abs(x0 - x1) < tol
        break;
    end
    x0 = x1;
end

fprintf('Total iterations: %d\n', i);
fprintf('Approximate root: %.6f\n', x1);
fprintf('f(root) = %.6e\n', f(x1));
