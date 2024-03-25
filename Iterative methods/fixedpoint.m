% Stan Andrei 322CA

tol = 1e-7;
maxiter = 1000;

x0 = 1; % initial guess
x1 = root(x0, 2);
i = 0;

while i < maxiter
  i++;

  if abs(x1 - x0) < tol % or eps
    break;
  endif

  x0 = x1;
  x1 = root(x0, 2);
endwhile

if i == maxiter
  printf("A fost atins numarul maxim de iteratii.\n");
endif

disp(x1);
disp(x1 * x1);

