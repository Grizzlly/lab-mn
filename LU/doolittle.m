
A = [14 8 3; 8 5 2; 3 2 1];

n = size(A)(1);

L = eye(size(A));
U = zeros(size(A));

for p = 1 : n
  for i = p : n
    U(p, i) = A(p, i) - L(p, 1 : i) * U(1 : i, i);
  endfor

  for i = p + 1 : n
    L(i, p) = (A(i, p) - L(i, 1 : p) * U(1 : p, p)) / U(p, p);
  endfor
endfor

disp(L);
disp(U);
disp(L * U);
