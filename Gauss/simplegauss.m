% Stan Andrei 322CA

A = [14 8 3; 8 5 2; 3 2 1];
b = [10; 12; 8];

[n n] = size(A);

allT = eye(n);

for p = 1 : n - 1
  for i = p + 1 : n
    m = A(i, p) / A(p, p);

    T = eye(n);
    T(i, p) = -m;

    A = T * A;
    b = T * b;

    allT = T * allT;
  endfor
endfor

disp(allT);
disp(A);
disp(b);

disp(inv(allT)* A);

