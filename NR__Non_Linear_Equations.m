n_var = input("Enter No. of variables: ");
n_eq = input("Enter No. of equations: ");
var = sym("x", [1, n_var]);
f = sym("f", [1, n_eq]);

for i = 1:n_eq
    fun = input(["Equation", num2str(i), ": "], "s");
    f(i) = str2sym(fun);
end

x = zeros(1, n_var);

for i = 1:n_var
    x(i) = input(["Enter the values of x: ", num2str(i), ": "]);
end

e = 1e-8;
J = jacobian(f, var);

for i = 1:100
    f = double(subs(f, var, num2cell(x)));
    J_eval = double(subs(J, var, num2cell(x)));
    y = -inv(J_eval)*F';
    x = x + y';
    if norm(y) < e
        break;
    end
end
