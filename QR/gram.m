
A = [14 8 3; 8 5 2; 3 2 1];

n = size(A)(1);

Q = A;
Q(:, 1) = A(:, 1) / norm(A(:, 1));

for i = 1 : n - 1
  for j = i + 1 : n
     Q(:, j) -= (Q(:, j)' * Q(:, i)) * Q(:, i);
  endfor

  Q(:, i + 1) /= norm(Q(:, i + 1));
endfor

R = Q' * A;

% OPTIONAL - pt o vizualizare mai buna
for i = 1 : n
  for j = 1 : n
    if abs(R(i, j)) < 0.001
      R(i, j) = 0;
    endif
  endfor
endfor

disp(Q);
disp(R);
disp(Q * R);
disp(Q * Q');

