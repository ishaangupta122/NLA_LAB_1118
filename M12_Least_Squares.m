% LEAST SQUARE METHOD FOR LINEAR EQUATION

clear;
clc;

fprintf('LEAST SQUARE METHOD FOR LINEAR EQUATION:\n\n');

x = input("Enter The Values of X: ");
y = input("Enter The Values of Y: ");

x2 = x.^2;
xy = x.*y;

sx = sum(x);
sy = sum(y);
sx2 = sum(x2);
sxy = sum(xy);

n = length(x);

fprintf("\n--- Calculated Values ---\n");
fprintf("Number of points (n) = %d\n", n);
fprintf("Sum of X      (Σx)   = %f\n", sx);
fprintf("Sum of Y      (Σy)   = %f\n", sy);
fprintf("Sum of X^2    (Σx^2) = %f\n", sx2);
fprintf("Sum of XY     (Σxy)  = %f\n", sxy);

A = [n sx; sx sx2];
B = [sy; sxy];
    
result = A \ B;

fprintf("\nPolynomial: Y = %.4f + %.4fx \n", result(1), result(2));