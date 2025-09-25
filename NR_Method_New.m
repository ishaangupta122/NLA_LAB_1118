f = input ("Enter the function");

for i = -10:1:10
    if f(i) * f(i+1) < 0
        break;
    end 
end

a = i;
b = i + 1;

if abs(f(a)) < abs(f(a))
    c = a;
else
    c = b;
end 

syms x
g = diff(f,x)

for i = 1:100
    d = c - (f(c)/g(c))
    if abs (c-d) < 0.0001
        break;
    end
    c = d;
end    