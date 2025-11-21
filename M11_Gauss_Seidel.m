% GAUSS SEIDEL ITERATIVE METHOD (Predefined Settings)

clear;
clc;

fprintf("GAUSS SEIDEL METHOD:\n\n");

A = input("Enter coefficient matrix A: ");
b = input("Enter RHS vector b: ");
x0 = input("Enter initial guess vector x0: ");

n = length(b);
x = x0;

tol = 0.001;        
maxIter = 100;      

for k = 1:maxIter
    x_old = x;
    
    for i = 1:n
        sigma = 0;
        for j = 1:n
            if j ~= i
                sigma = sigma + A(i,j) * x(j);
            end
        end
        
        x(i) = (b(i) - sigma) / A(i,i);
    end
    
    if norm(x - x_old, inf) < tol
        fprintf("\nConverged in %d iterations.\n", k);
        disp("Solution vector x:");
        disp(x);
        return;
    end
end

fprintf("Did NOT converge within %d iterations.\n", maxIter);
disp("Last computed x:");
disp(x);
