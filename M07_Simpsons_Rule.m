% SIMPSONS 1/3 RULE

clear;
clc;

fprintf('SIMPSONS 1/3 RULE: \n\n');

f = input('Enter the function: ');
a = input('Enter lower limit a: ');
b = input('Enter upper limit b: ');
n = input('Enter an EVEN number of subintervals n: ');

if mod(n, 2) ~= 0
    error('n must be even for Simpsons 1/3 rule');
end

h = (b - a) / n;
x = a:h:b;
y = f(x);

odd_sum = sum(y(2:2:end-1));   
even_sum = sum(y(3:2:end-2));  

I_simpson = (h/3) * (y(1) + 4*odd_sum + 2*even_sum + y(end));

fprintf('Simpsons 1/3 Rule Approximation: %.6f\n', I_simpson);
