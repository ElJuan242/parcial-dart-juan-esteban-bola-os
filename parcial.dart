void main() {
  // arreglos
  List<String> nombres = ['Ana', 'Luis', 'María', 'Carlos'];
  List<int> notas = [9, 5, 7, 3];
 
  print('Calificaciones');
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
  
  print('\n Suma de notas (while)');
  int suma = 0;
  int i = 0;
  while (i < notas.length) {
    suma += notas[i];
    i++;
  }
  print('Suma total: $suma');
  print('Promedio: ${suma ~/ notas.length}');
}