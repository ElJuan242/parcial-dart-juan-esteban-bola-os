void main() {
  //arreglos
  List<String> nombres = ['Ana', 'Luis', 'María', 'Carlos'];
  List<int> notas = [9, 5, 7, 3];
  
  //ciclo for y
  print('=== Calificaciones ===');
  for (int i = 0; i < nombres.length; i++) {
    String estado;
 
    if (notas[i] >= 9) {
      estado = 'Excelente';
    } else if (notas[i] >= 7) {
      if (notas[i] == 7) {
        estado = 'Bien';
      } else {
        estado = 'Muy bien';
      }
    } else if (notas[i] >= 6) {
      estado = 'Suficiente';
    } else {
      estado = 'Reprobado';
    }
 
    print('${nombres[i]}: ${notas[i]} -> $estado');
  }
   //while y do-while
  print('\n=== Suma de notas (while) ===');
  int suma = 0;
  int i = 0;
  while (i < notas.length) {
    suma += notas[i];
    i++;
  }
  print('Suma total: $suma');
  print('Promedio: ${suma ~/ notas.length}');
 
  print('\n=== Conteo regresivo (do-while) ===');
  int contador = notas.length;
  do {
    print('Alumno #$contador: ${nombres[contador - 1]}');
    contador--;
  } while (contador > 0);
 
  //switch case
  print('\n=== Nivel por nota (switch) ===');
  for (int nota in notas) {
    String nivel;
    switch (nota) {
      case 10:
      case 9:
        nivel = 'A';
        break;
      case 8:
      case 7:
        nivel = 'B';
        break;
      case 6:
        nivel = 'C';
        break;
      default:
        nivel = 'F';
    }
    print('Nota $nota -> Nivel $nivel');
  }
   //try catch
  print('\n Manejo de errores (try-catch)');
  try {
    List<int> vacia = [];
    print(vacia[0]);
  } catch (e) {
    print('Error capturado: $e');
  } finally {
    print('Bloque finally siempre se ejecuta');
  }
 
  print('\nPrograma finalizado.');
}