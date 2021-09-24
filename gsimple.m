## gsimple(matriz);

function matriz = gsimple (matriz)
  clc;
  ##VARIABLES
  control = 0;
    
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
     if (matriz(1,1) == 1)
         control = 1;
    
    ##SEGUNDO CASO    
      elseif (matriz(2,1) == 1)
         fila = 2;
         for columna = 1 : 4
           valor_aux              = matriz(fila,columna);
           matriz(fila,columna)   = matriz(fila-1,columna);
           matriz(fila-1,columna) = valor_aux;
         endfor
         control = 2;
    ##TERCER CASO 
      elseif (matriz(3,1) == 1)  
        fila = 3; 
        for columna = 1 : 4
             valor_aux              = matriz(fila,columna);
             matriz(fila,columna)   = matriz(fila-2,columna);
             matriz(fila-2,columna) = valor_aux;
           endfor
          control = 3;
     endif
     
     ##MATRIZREAJUSTADA
     if(control == 1 || control == 2 || control ==3)
        fprintf('\nMATRIZ REAJUSTADA\n');
        disp(matriz)
        fprintf('\n__________________________________\n');
     endif
     
     
   
  endfunction
