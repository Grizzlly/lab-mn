% Stan Andrei 322CA

A = [8 5 2; 8 3 14; 3 2 1];
b = [10; 12; 8];

[n n] = size(A);

allT = eye(n);

for p = 1 : n - 1
  % PIVOTARE TOTALA
  [maxvalues idxs] = max(abs(A(p : end,p : end)));
  [maxval idx] = max(maxvalues);

  line = p - 1 + idxs(idx);
  col = p - 1 + idx;

  P = eye(n);
  P(p, p) = P(line, line) = 0;
  P(line, p) = P(p, line) = 1;
  A = P * A;
  b = P * b;

  P = eye(n);
  P(p, p) = P(col, col) = 0;
  P(col, p) = P(p, col) = 1;
  A = A * P;
  % PIVOTARE TOTALA

  for i = p + 1 : n
    m = A(i, p) / A(p, p);

    T = eye(n);
    T(i, p) = -m;

    A = T * A;
    b = T * b;

    allT = T * allT;
  endfor
endfor

disp(inv(A) * b);



