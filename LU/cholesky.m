% Stan Andrei 322CA

A = [14 8 3; 8 5 2; 3 2 1];

n = size(A)(1);

L = zeros(n);

for i = 1 : n
  for j = 1 : i
    sum = L(i, 1 : j) * L(j, 1 : j)';

    if i == j
      L(i, i) = sqrt(A(i, i) - sum);
    else
      L(i, j) = (A(i, j) - sum) / L(j, j);
    endif
  endfor
endfor

disp(L);
disp(L * L');
