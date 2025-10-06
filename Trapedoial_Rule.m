% COMPOSITE/NON-COMPOSITE TRAPEZOIDAL RULE 

clear;
clc;

f = input('Enter the function: ');
a = input('Enter lower limit a: ');
b = input('Enter upper limit b: ');
n = input('Enter number of subintervals n: ');

h = (b - a)/n;
x = a:h:b;
y = f(x);

sum_middle = sum(y(2:n)); 

I_composite_area = (h/2) * (y(1) + 2*sum_middle + y(end));

I_non_composite_area = ((b - a)/2) * (f(a) + f(b));

fprintf('Composite Trapezoidal Rule Area: %.6f\n', I_composite_area);
fprintf('Non-Composite Trapezoidal Rule Approximation: %.6f\n', I_non_composite_area);
