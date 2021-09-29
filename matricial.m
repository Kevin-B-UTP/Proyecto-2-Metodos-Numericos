## Mmatricial(matriz);

function matriz = Mmatricial(matriz)
  clc;
  ## SALIDA MATRIZ ORIGINAL
  fprintf('\nMATRIZ INGRESADA\n\n');
  disp(matriz)
  
  ## PASO: SEPARACIÓN DE PARTES
        for fila = 1 : 3
          for columna = 1 : 3
                MA(fila,columna) = matriz(fila,columna);
          endfor
        endfor
        
      ## SALIDA MATRIZ A
        fprintf('\nMATRIZ A\n');
        disp(MA)
        
        columna = 4;
        for fila = 1 : 3
            MB(fila,1)= matriz(fila,columna);
        endfor
        
      ## SALIDA MATRIZ B
        fprintf('\nMATRIZ B\n');
        disp(MB)
      
      fprintf('\nRESPUESTAS, x, y, z\n');
      
  ## CÁLCULO DE LAS INCÓGNITAS
  inv(MA)* MB
  fprintf('\n\n\n\n');

 endfunction
