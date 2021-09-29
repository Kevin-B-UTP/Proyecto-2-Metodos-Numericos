## Metodo Gauss Seidel
###REVISAR
function matriz = gseidel(matriz, tolerancia)
  clc;
  #Variables
  signo= -1;
  iteracion=0;
  x=0;
  y=0;
  z=0;
  Erx=999;
  Ery=999;
  Erz=999;
  #Despeje 
  while (Erx > tolerancia || Ery > tolerancia || Ery > tolerancia)
  xold=x;
  yold=y;
  zold=z;
  x = matriz(1,3)+(signo * matriz(1,2)*y)+(signo*matriz(1,3)*x)/(matriz(1,1))
  y = ( (signo* matriz(2,1)*x) + (signo * matriz(2,3)*z) + matriz (2,4) ) / matriz (2,2)
  z = ( (signo* matriz(3,1)*x) + (signo * matriz(3,2)*y) + matriz (3,4) ) / matriz (3,3)
    if iteracion > 1
    Erx= abs((x-xold)) 
    Ery= abs((y-yold)) 
    Erz= abs((z-zold)) 
    endif
  iteracion = iteracion + 1;
  endwhile
  clc;
  #Encabezado
  clc;
  fprintf('\n__________________________________');
  fprintf('\n     MÉTODO GAUSS SEIDEL');
  fprintf('\n__________________________________\n');
  #Matriz 
  fprintf('\nMatriz Ingresada\n');
  disp(matriz);
  fprintf('\n__________________________________\n');
  fprintf('\n');
  fprintf('\n__________________________________');
  fprintf('\nMÉTODO GAUSS SEIDEL - RESULTADOS');
  fprintf('\n__________________________________\n');
  fprintf('\nNUMERO DE ITERACIONES %i', iteracion);
  fprintf('\nX= %f', x);
  fprintf('\nY= %f', y);
  fprintf('\nZ= %f', z);
  fprintf('\n__________________________________');
  fprintf('\n     PORCENTAJE DE ERROR');
  fprintf('\nEr_x= %f', Erx);
  fprintf('\nEr_y= %f', Ery);
  fprintf('\nEr_z= %f', Erz);
  fprintf('\n__________________________________\n');
endfunction