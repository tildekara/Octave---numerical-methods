 A = [2, -2, 2, -7, 6; 7, -3, -2, 7, 2; 2, 2, -1, 1, 4; 9, 8, -2, 2, -2; 4, 8, -3, 3, -1]
B = [-4, 11, 9, 21, 16];

m = length(A(:,1)) %wszystkie rzedy
n = length(A(1,:)) %wszystkie kolumny
disp(A)

L = zeros(m,m);
U = zeros(m,m);


for i = 1:1:m
  L(i,i) = 1;

  for j = 1:1:i
    suma = 0;
    for k = 1:1:(j-1)
      suma += L(j,k).*U(k,i);
    end
    U(j,i)=A(j,i) - suma;
  end
  for j = (i+1):1:m
    suma2 = 0;
    for k = 1:1:(i-1)
      suma2 += L(j,k).*U(k,i);
    end

    L(j,i) = (A(j,i) - suma2)/U(i,i);
  end
end

disp("wynik")
disp(L*U-A)

x = U\(L\transpose(B))