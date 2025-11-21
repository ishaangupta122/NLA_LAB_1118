% BISECTION METHOD

clear;
clc;

fprintf('BISECTION METHOD: \n\n');

f = input("Enter the function: ");
a = input('Enter the lower bound a: ');
b = input('Enter the upper bound b: ');

tol = 0.0001;

if f(a) * f(b) > 0
    fprintf('f(a) and f(b) must have opposite signs.');
end

fprintf('N\t A\t\t B\t\t C\t\t F(C)\n');
for i = 1:100
    c = (a + b)/2;       
    fc = f(c);
    fprintf('%d\t %.6f\t %.6f\t %.6f\t %.6f\n', i, a, b, c, fc);
    
    if abs(fc) < tol || (b - a)/2 < tol
        fprintf('Root found: %.6f at iteration %d\n', c, i);
        break;
    end
    
    if f(a)*fc < 0
        b = c;
    else
        a = c;
    end
end
