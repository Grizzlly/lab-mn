% Stan Andrei 322CA

A = [8 5 2; 14 8 3; 3 2 1];
b = [10; 12; 8];

[n n] = size(A);

allT = eye(n);
allP = eye(n);

for p = 1 : n - 1
  % PIVOTARE PARTIALA
  [~ idx] = max(abs(A(p : end, p)));

  % Scalare
  % scales = max(abs(A(p : end, p : end)), [], 2);
  % [~, idx] = max(abs(A(p : end, p)) ./ scales);

  idx += p - 1;

  P = eye(n);
  P(p, p) = P(idx, idx) = 0;
  P(idx, p) = P(p, idx) = 1;

  A = P * A;
  allP = P * allP;
  % PIVOTARE PARTIALA

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

disp(allP * inv(allT) * A);

