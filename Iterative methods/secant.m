% Stan Andrei 322CA

tol = 1e-7;
maxiter = 1000;
h = 1e-5;

x0 = 1;
fx0 = function1(x0);
x1 = 2;
fx1 = function1(x1);
i = 0;

while i < maxiter
  i++;

  deriv = (fx1 - fx0) / (x1 - x0);
  newx = x1 - fx1 / deriv;
  fnewx = function1(newx);

  % this can also be done with 1 variable
  % deriv = (f(x + h / 2) - f(x - h / 2)) / h;

  x0 = x1;
  x1 = newx;

  fx0 = fx1;
  fx1 = fnewx;

  if abs(fnewx) < tol
    break;
  endif
endwhile

if i == maxiter
  printf("A fost atins numarul maxim de iteratii.\n");
endif

disp(x1);
disp(function1(x1));

