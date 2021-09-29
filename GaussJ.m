 %Metodo de GaussJordan%
 clear,clc
 f1 = input('Ingresa la cantidad de filas: ');
 co = input('Ingresa la cantidad de columnas: ');
 
 for i=1:co
    for j=1:f1
      fprintf('Fila: %x\n', j)
      fprintf('Columna: %x', i)
      r= input ('Numero de fila y columna: ');
      a(j,i)=r;
      j=j+1;
    end
    i=i+1;
 end
a
pause
for i=1:co-1
  a(i,:)=a(i,:)/a(i,i);
  for j=i+1:f1
   a(j,:)=a(j,:)-a(i,:)*a(j,i);
   j=j+1;
   a
   pause
  end
 i=i+1;
 a
 pause
end

for i=f1;-1:2
  for j=i-1:-1:1
    a(j,:)=a(j,:)-a(i,:)*a(j,i);
    j=j-1;
    a
    pause
  end
  i=i-1;
  a
  pause
end
fprintf ('resultado\n');
