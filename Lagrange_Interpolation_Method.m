% LAGRANGE INTERPOLATION METHOD

clear;
clc;

x_val = input("Enter the x values in vectors: ");
y_val = input("Enter the y values in vectors: ");
n = length(x_val);

syms x;
L_Poly = 0;

for i = 1:n
    a = 1;
    for j = 1:n
        if i ~= j
            a = a * (x - x_val(j)) / (x_val(i) - x_val(j));
        end
    end
    L_Poly = L_Poly + a * y_val(i);
end

L_poly = simplify(L_Poly);

p = input("Enter the value of x to interpolate: ");
y = double(subs(L_poly, x, p));

fprintf('Lagrange Polynomial: %s\n', char(L_poly));
fprintf('Interpolated value at %.4f is %.4f\n', p, y);
