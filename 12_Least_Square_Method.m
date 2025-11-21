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

A = [n sx; sx sx2];
B = [sy; sxy];
    
result = A \ B;

fprintf("\nPolynomial: Y = %f + %f X ", result(1), result(2));