## Metodo Gauss Seidel
###REVISAR
function matriz = gseidel(matriz, tolerancia)
  #Encabezado
  clc;
  fprintf('\n__________________________________');
  fprintf('\n     MÉTODO GAUSS SEIDEL');
  fprintf('\n__________________________________\n');
  #Matriz 
  fprintf('\nMatriz Ingresada\n');
  fprintf('\n__________________________________\n');
  disp(matriz);
  fprintf('\n__________________________________');
  #Variables
  signo= -1;
  iteracion=1;
  x=0;
  y=0;
  z=0;
  Erx=1000;
  Ery=1000;
  Erz=1000;
  #Despeje 
  while (Erx > tolerancia && Ery > tolerancia && Ery > tolerancia)
  x = (matriz(1,4)+((signo)*(matriz(1,2))*y)+ ((signo)*(matriz(1,3))*z))/(matriz(1,1));
  y = (matriz(2,4)+((signo)*(matriz(2,1))*x)+ ((signo)*(matriz(2,3))*z))/(matriz(2,2));
  z = (matriz(3,4)+((signo)*(matriz(3,1))*x)+ ((signo)*(matriz(3,2))*y))/(matriz(3,3));
  if (iteracion == 1)
  fprintf('\n__________________________________\n');
  fprintf('\nITERACION No. %2i', iteracion);
  fprintf('\nX= %f', x);
  fprintf('\nY= %f', y);
  fprintf('\nZ= %f', z);
  fprintf('\n__________________________________');
  else 
    Erx= abs(x-xold); 
    Ery= abs(y-yold); 
    Erz= abs(z-zold);
    fprintf('\n__________________________________\n');
    fprintf('\nITERACION No. %2i', iteracion);
    fprintf('\nX= %f', x);
    fprintf('\nY= %f', y);
    fprintf('\nZ= %f', z);
    fprintf('\n__________________________________');
    fprintf('\nPORCENTAJE DE ERROR');
    fprintf('\nEr_x= %f', Erx);
    fprintf('\nEr_y= %f', Ery);
    fprintf('\nEr_z= %f', Erz);
    fprintf('\n__________________________________\n');
  endif
  iteracion = iteracion + 1;
  xold=x;
  yold=y;
  zold=z;
  endwhile
endfunction