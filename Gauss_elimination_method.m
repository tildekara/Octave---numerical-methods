A = [9, 8, -2, 2, -2, 21; 7, -3, -2, 7, 2, 11; 2, -2, 2, -7, 6, -4; 4, 8, -3, 3, -1, 16; 2, 2, -1, 1, 4, 9]

M = size(A(:,1));
m = M(1);
N = size(A(1,:))
n = N(2);

for j = 1:1:m
  for i = j+1:1:m
    L = A(i,j)./A(j,j);
    A(i,:) = A(i,:) - L.*A(j,:);
   end
end

printf('Echlon form \n');
disp(A)

printf(' vector \n');
b = A(:,m+1)


for j = m:-1:1
  A(j,:) = A(j,:)./A(j,j);
  if (j+1)<=m
    for i = j+1:1:m
      A(j,:) = A(j,:) - A(i,:).*A(j,i);
    end
  end
end

printf('Roots\n')
disp(A(:,n))