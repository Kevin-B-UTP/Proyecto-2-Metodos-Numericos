## gsimple(matriz);

function matriz = gsimple (matriz)
  clc;
  ##VARIABLES
  control = 0;
  signo = -1;
  
    
  ##ENCABEZADO
      fprintf('\n__________________________________');
      fprintf('\n     MÉTODO GAUSS SIMPLE');
      fprintf('\n__________________________________\n');
      
  ## PASO#1 VERIFICO SI HAY UN 1 EN LA POSICIÓN (1,1),O(2,1),O(3,1)
  ##MATRIZ
      fprintf('\nMATRIZ INGRESADA\n');
      disp(matriz);
      fprintf('\n__________________________________\n');
  
    ##PRIMER CASO
     if (matriz(1,1) == 1 ||matriz(1,1) == -1)
         control = 1;
    
    ##SEGUNDO CASO    
      elseif (matriz(2,1) == 1||matriz(2,1) == -1)
         fila = 2;
         for columna = 1 : 4
           valor_aux              = matriz(fila,columna);
           matriz(fila,columna)   = matriz(fila-1,columna);
           matriz(fila-1,columna) = valor_aux;
         endfor
         control = 2;
    ##TERCER CASO 
      elseif (matriz(3,1) == 1 || matriz(3,1) == -1)  
        fila = 3; 
        for columna = 1 : 4
             valor_aux              = matriz(fila,columna);
             matriz(fila,columna)   = matriz(fila-2,columna);
             matriz(fila-2,columna) = valor_aux;
           endfor
          control = 3;
     endif
     
     ##MATRIZ-REAJUSTADA
     if(control == 1 || control == 2 || control ==3)
        fprintf('\nMATRIZ REAJUSTADA\n');
        disp(matriz)
        fprintf('\n__________________________________\n');
     endif
     
     ##PASO #2 VOLVER 0 LA POSICIÓN (2,1) y (3,1) DE LA MATRIZ
        fila  = 1;
        for fila2 = 2 :3
                 valor = matriz(fila2,1)/matriz(fila,1);
                   for columna = 1 : 4   
                            matriz(fila2,columna) =  ((valor*signo)*matriz(fila,columna))+matriz(fila2,columna);
                   endfor
        endfor 
     
        fprintf('\nMATRIZ DESPUES DE MODIFICAR (2,1) Y (3.1)\n');
        disp(matriz)
        fprintf('\n__________________________________\n');
        
     ##PASO #3 VOLVER 0 LA POSICIÓN (3,2) DE LA MATRIZ
       valor = matriz(3,2)/matriz(2,2);
         for columna = 1 : 4   
             matriz(3,columna) =  ((valor*signo)*matriz(2,columna))+matriz(3,columna);
         endfor
        fprintf('\nMATRIZ DESPUES DE MODIFICAR (3,2)\n');
        disp(matriz)
        fprintf('\n__________________________________\n');
        
      ## PASO #4 DESPEJE,CÁLCULO DE LAS VARIABLES X, Y , Z
      z = matriz(3,4) / matriz(3,3)
      y = ( matriz(2,4) + matriz(2,3)*z)/matriz(2,2) 
      y = ( matriz(1,4) + matriz(1,3)*z+matriz(1,2)*y)/matriz(1,1)
      fprintf('\n__________________________________\n');
  endfunction
