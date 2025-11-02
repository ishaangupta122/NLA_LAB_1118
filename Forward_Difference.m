% NEWTON FORWARD DIFFERENCE INTERPOLATION

clear;
clc;

syms X;

fprintf('NEWTON FORWARD DIFFERENCE INTERPOLATION: \n\n');

X_val = input('Enter Values of X: ');
y_val = input('Enter Values of Y: ');

n = length(X_val);
h = X_val(2) - X_val(1);


diff_table = zeros(n,n);
diff_table(:,1) = y_val(:);

for j=1:(n-1)
  for i=1:(n-j)
    diff_table(i,j+1) = diff_table(i+1,j) - diff_table(i,j);
  end
end

N_poly = y_val(1);
p = (X-X_val(1))/h;
p_term = 1;

for i=1:(n-1)
  p_term = p_term * (p-(i-1));
  N_poly = N_poly + (p_term/factorial(i)) * diff_table(1, i+1);
end

N_poly = simplify(N_poly);

fprintf('\nDifference Table: \n');
disp(diff_table);

fprintf('\nResulting Polynomial:\n');
disp(N_poly);
