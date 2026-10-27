const laboratoriosUtez = ['Lab Química', 'Lab Redes', 'Lab Física'];

class Consumo {
  const Consumo({required this.laboratorio, required this.litros});
  final String laboratorio;
  final double litros;
}

String? validarLitros(double? litros) {
  // Si no se pudo convertir el texto a número, llega null.
  if (litros == null) return 'Escribe los litros con número';
  // No se aceptan cero ni negativos.
  if (litros <= 0) return 'Los litros deben ser mayores que cero';
  // Tope máximo permitido.
  if (litros > 10000) return 'Los litros superan el tope de 10000';
  // null significa "sin error".
  return null;
}
