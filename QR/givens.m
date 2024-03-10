% Stan Andrei 322CA

A = [1 -1 1 2; 1 3 3 3; -1 -1 5 4; 1 2 3 5; 2 4 6 7];

[m n] = size(A);

Q = eye(m);

for i = 1 : n
  for j = m : -1 : i + 1
    if A(j, i) != 0
      G = eye(m);
      r = sqrt(A(j, i) ^ 2 + A(i, i) ^ 2);

      G(j, i) = - A(j, i) / r;
      G(i, j) = - G(j, i);

      G(i, i) = G(j, j) =  A(i, i) / r;

      Q = G * Q;
      A = G * A;
    endif
  endfor
endfor

Q = Q';

% OPTIONAL - pt o vizualizare mai buna
for i = 1 : m
  for j = 1 : n
    if abs(A(i, j)) < 0.001
      A(i, j) = 0;
    endif
  endfor
endfor

disp(Q);
disp(A);
disp(Q * A);
disp(Q * Q');

