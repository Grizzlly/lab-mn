% Stan Andrei 322CA

a = [0; 14; 8; 3];
b = [8; 5; 2; 4];
c = [3; 2; 1; 0];
d = [5; 8; 10; 3];

M = [8 3 0 0; 14 5 2 0 ; 0 8 2 1; 0 0 3 4];
disp(M);

n = size(b)(1);

x = zeros(n, 1);

c(1) = c(1) / b(1);
d(1) = d(1) / b(1);

for i = 2 : n
  c(i) = c(i) / (b(i) - a(i) * c(i - 1));
  d(i) = (d(i) - a(i) * d(i - 1)) / (b(i) - a(i) * c(i - 1));
end

x(n) = d(n);

for i = (n - 1) : -1 : 1
    x(i) = d(i) - c(i) * x(i + 1);
end

disp(x);

