% Stan Andrei 322CA

tol = 1e-7;
maxiter = 1000;

% x^2 - 2 = 0
% a = 0, b = 2

i = 0;
c = 0;
a = 0;
b = 2;
fa = function1(a);
fb = function1(b);

while i < maxiter
  i++;

  c = (a + b) / 2;
  fc = function1(c);

  if fc > 0
    b = c;
    fb = fc;
  endif

  if fc < 0
    a = c;
    fa = fc;
  endif

  if abs(fc) < tol
    break;
  endif
endwhile

if i == maxiter
  printf("A fost atins numarul maxim de iteratii.\n");
endif

disp(c);
disp(fc);

