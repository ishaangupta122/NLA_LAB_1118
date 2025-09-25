% Fixed Point Iteration Method

clear;
clc;

% f = input("Enter the function: ");
f = @(x)  2*sin(pi*x) + x;

for i = -10:1:10
    if f(i) * f(i+1) < 0
        break;
    end
end 

a = i;
b = i+1;
c = input("Enter Initial Value: ");
g = @(x) -2*sin(pi*x); 
% g = input("Enter manipulated function: ");

syms x
d = diff(g, x);

for i = a:0.001:b
    if g(i) < a && g(i) > b
        break;
    end
    if abs (d(i)) > 1
        break;
    end
end    

for i = 1:100
    p = g(c);
    if abs(c-p) < 0.0001
        break;
    end
    c = p;
end    