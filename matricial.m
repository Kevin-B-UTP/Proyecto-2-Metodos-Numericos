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
endfunction