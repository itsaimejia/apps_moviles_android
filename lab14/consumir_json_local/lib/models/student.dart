class Estudiante {
  late String matricula;
  late String nombreCompleto;
  late String carrera;
  late int semestre;
  late String telefono;
  late String correo;

  Estudiante(
      {required this.matricula,
      required this.nombreCompleto,
      required this.carrera,
      required this.semestre,
      required this.telefono,
      required this.correo});

  Estudiante.fromJson(Map<String, dynamic> json)
      : matricula = json['matricula'],
        nombreCompleto = json['nombre_completo'],
        carrera = json['carrera'],
        semestre = json['semestre'],
        telefono = json['telefono'],
        correo = json['correo'];
}
