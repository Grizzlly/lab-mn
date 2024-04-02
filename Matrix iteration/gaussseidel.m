% Stan Andrei 322CA

A = [14 8 3; 5 8 2; 4 3 5];
b = [1; 2; 3];

[n n] = size(A);

x = zeros(n, 1);

i = 0;
maxiter = 1000;
tol = 1e-7;

while i < maxiter
  i++;

  last = x;

  for p = 1 : n
    sum = A(p, 1 : p - 1) * x(1: p - 1) + A(p, p + 1 : end) * x(p + 1 : end);
    x(p) = (b(p) - sum) / A(p, p);
  endfor

  if norm(last - x) < tol
    break;
  endif

endwhile

if i == maxiter
  printf("Max number of iterations reached.");
endif

disp(x);
disp(A * x);
