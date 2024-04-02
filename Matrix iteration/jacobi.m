% Stan Andrei 322CA

A = [14 8 3; 5 8 2; 4 3 5];
b = [1; 2; 3];

[n n] = size(A);
x0 = zeros(n, 1);

i = 0;
maxiter = 1000;
tol = 1e-7;

while i < maxiter
  i++;

  x1 = zeros(n, 1);

  for p = 1 : n
    x1(p) = (b(p) - A(p, [1 : p - 1; p + 1 : n]) * x0([1 : p - 1; p + 1 : n])) / A(p, p);
  endfor

  if norm(x1 - x0) < tol
    x0 = x1;
    break;
  endif

  x0 = x1;
endwhile

if i == maxiter
  printf("Max number of iterations reached.");
endif

disp(x0);
disp(A * x0);
