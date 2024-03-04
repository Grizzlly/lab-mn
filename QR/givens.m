
A = [14 8 3; 8 5 2; 3 2 1];

n = size(A)(1);

Q = eye(n);

for i = 1 : n
  for j = n : -1 : i + 1
    if A(j, i) != 0
      G = eye(n);
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

disp(Q);
disp(A);
disp(Q * A);

