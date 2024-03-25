% Stan Andrei 322CA

tol = 1e-7;
maxiter = 1000;

x = 1;
i = 0;

while i < maxiter
  i++;

  e = function1(x);

  if abs(e) < tol
    break;
  endif

  x = x - e / function1_deriv(x);
endwhile

if i == maxiter
  printf("A fost atins numarul maxim de iteratii.\n");
endif

disp(x);
disp(function1(x));

