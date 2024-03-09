
A = [1 -1 1 2; 1 3 3 3; -1 -1 5 4; 1 2 3 5; 2 4 6 7];

[m n] = size(A);

Q = eye(m);

for i = 1 : min(m - 1, n)
  v = zeros(m, 1);

  v(i : m) = A(i : m, i);
  v(i) += sign(v(i)) * norm(v);

  v = v / norm(v);

  H = eye(m) - 2 * v * v';

  Q = H * Q;
  A = H * A;
endfor

% OPTIONAL - pt o vizualizare mai buna
for i = 1 : m
  for j = 1 : n
    if abs(A(i, j)) < 0.001
      A(i, j) = 0;
    endif
  endfor
endfor

Q = Q';

disp(Q);
disp(A);
disp(Q * A);
disp(Q * Q');

