% FIXED POINT ITERATION METHOD

clear;
clc;

syms x;
f_sym = input('Enter f(x): ');
g_sym = input('Enter g(x): ');
x0 = input('Enter initial guess: ');

f = matlabFunction(f_sym);
g = matlabFunction(g_sym);

d_sym = diff(g_sym, x);
d = matlabFunction(d_sym);

if abs(d(x0)) >= 1
    fprintf("Initial Guess will not converge.\n");
    return;
end

tol = 0.0001;

for i = 1:100
    x1 = g(x0);
    if abs(x1 - x0) < tol
        fprintf('\nRoot: %.8f after %d iterations\n', x1, i);
        break;
    end
    x0 = x1;
end

