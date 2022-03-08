x = A(:,1);
y = A(:,2);
deltay =A(:,3);
n = length(x);
ASP = 0;
B = 0;
sumx = sum(x);
sumx2 = sum(x.^2);
for j = 1:n
    temp1 = ((n*x(j)-sumx)/(n * sumx2-sumx^2))^2 *deltay(j)^2;
    ASP = ASP + temp1;
end
for i = 1:n
    temp2 = ((sumx2-x(i)*sumx)/(n * sumx2-sumx^2))^2*deltay(i)^2;
    B = B + temp2;
end
DeltaA = sqrt(ASP);
DeltaB = sqrt(B);
disp(DeltaA)
disp(DeltaB)
