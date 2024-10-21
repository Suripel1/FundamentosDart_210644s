// Enum para Grupo Sanguíneo
enum GrupoSanguineo {
    APositivo,
    ANegativo,
    BPositivo,
    BNegativo,
    OPositivo,
    ONegativo,
    ABPositivo,
    ABNegativo,
}

// Clase abstracta PersonBase
abstract class PersonBase {
  String tituloCortesia;
  String nombre;
  String primerApellido;
  String segundoApellido;
  DateTime fechaNacimiento;
  String fotografia;
  String genero;
  GrupoSanguineo tipoSangre;
  bool estatus;
  DateTime fechaRegistro;
  DateTime fechaActualizacion;

  PersonBase({
    required this.tituloCortesia,
    required this.nombre,
    required this.primerApellido,
    required this.segundoApellido,
    required this.fechaNacimiento,
    required this.fotografia,
    required this.genero,
    required this.tipoSangre,
    required this.estatus,
    required this.fechaRegistro,
    required this.fechaActualizacion,
  });

  String mostrarDatos(); // Método abstracto para mostrar los datos
}

// Clase Miembro
class Miembro extends PersonBase {
  int id;
  int membresiaId;
  int usuarioId;

  Miembro({
    required this.id,
    required this.membresiaId,
    required this.usuarioId,
    required String tituloCortesia,
    required String nombre,
    required String primerApellido,
    required String segundoApellido,
    required DateTime fechaNacimiento,
    required String fotografia,
    required String genero,
    required GrupoSanguineo tipoSangre,
    required bool estatus,
    required DateTime fechaRegistro,
    required DateTime fechaActualizacion,
  }) : super(
          tituloCortesia: tituloCortesia,
          nombre: nombre,
          primerApellido: primerApellido,
          segundoApellido: segundoApellido,
          fechaNacimiento: fechaNacimiento,
          fotografia: fotografia,
          genero: genero,
          tipoSangre: tipoSangre,
          estatus: estatus,
          fechaRegistro: fechaRegistro,
          fechaActualizacion: fechaActualizacion,
        );

  @override
  String mostrarDatos() {
    return '''
    -----------------------------------
    DATOS DEL MIEMBRO
    -----------------------------------
    ID: $id
    Membresía: $membresiaId
    Usuario: $usuarioId
    Título de cortesía: $tituloCortesia
    Nombre Completo: $nombre $primerApellido $segundoApellido 
    Fecha de Nacimiento: ${fechaNacimiento.day.toString().padLeft(2, '0')}/${fechaNacimiento.month.toString().padLeft(2, '0')}/${fechaNacimiento.year}
    Fotografía: $fotografia
    Género: $genero
    Tipo de Sangre: ${tipoSangre.toString().split('.').last.replaceAll('Positivo', '+').replaceAll('Negativo', '-')}
    Estatus: ${estatus ? "Activo" : "Inactivo"}
    Fecha de Registro: ${fechaRegistro.day.toString().padLeft(2, '0')}/${fechaRegistro.month.toString().padLeft(2, '0')}/${fechaRegistro.year} ${fechaRegistro.hour.toString().padLeft(2, '0')}:${fechaRegistro.minute.toString().padLeft(2, '0')}:${fechaRegistro.second.toString().padLeft(2, '0')}
    Fecha de Actualización: ${fechaActualizacion.day.toString().padLeft(2, '0')}/${fechaActualizacion.month.toString().padLeft(2, '0')}/${fechaActualizacion.year} ${fechaActualizacion.hour.toString().padLeft(2, '0')}:${fechaActualizacion.minute.toString().padLeft(2, '0')}:${fechaActualizacion.second.toString().padLeft(2, '0')}
    ------------------------------------
    ''';
  }
}

void main() {
  // Admon de Miembros
  List<Miembro> miembros = [];

  // Caso 1: Nuevo miembro registrado hoy
  Miembro nuevoMiembro = Miembro(
    id: 1,
    membresiaId: 101,
    usuarioId: 1001,
    tituloCortesia: 'Premium',
    nombre: 'Jorge',
    primerApellido: 'Cazarez',
    segundoApellido: 'Cruz',
    fechaNacimiento: DateTime(1990, 5, 15),
    fotografia: 'JorgeCV1.jpg',
    genero: 'Masculino',
    tipoSangre: GrupoSanguineo.OPositivo,
    estatus: true,
    fechaRegistro: DateTime.now(),
    fechaActualizacion: DateTime.now(),
  );

  miembros.add(nuevoMiembro);
  print('Caso 1: Nuevo Miembro');
  print(nuevoMiembro.mostrarDatos());

  // Caso 2: Miembro que fue empleado del gimnasio
  Miembro exEmpleado = Miembro(
    id: 2,
    membresiaId: 102,
    usuarioId: 1002,
    tituloCortesia: 'Estudiante',
    nombre: 'Fulanito',
    primerApellido: 'Perez',
    segundoApellido: 'Islas',
    fechaNacimiento: DateTime(1985, 8, 22),
    fotografia: 'fot2.jpg',
    genero: 'Femenino',
    tipoSangre: GrupoSanguineo.APositivo,
    estatus: true,
    fechaRegistro: DateTime(2023, 1, 10),
    fechaActualizacion: DateTime.now(),
  );

  miembros.add(exEmpleado);
  print('\nCaso 2: Ex-empleado que es miembro');
  print(exEmpleado.mostrarDatos());

  // Caso 3: Miembro dado de baja
  Miembro dadoDeBaja = Miembro(
    id: 3,
    membresiaId: 103,
    usuarioId: 1003,
    tituloCortesia: '',
    nombre: 'Carlos',
    primerApellido: 'Fernandez',
    segundoApellido: 'Martinez',
    fechaNacimiento: DateTime(1970, 2, 10),
    fotografia: 'foto3.jpg',
    genero: 'Masculino',
    tipoSangre: GrupoSanguineo.BNegativo,
    estatus: false,
    fechaRegistro: DateTime(2022, 6, 15),
    fechaActualizacion: DateTime.now(),
  );

  miembros.add(dadoDeBaja);
  print('\nCaso 3: Miembro dado de baja');
  print(dadoDeBaja.mostrarDatos());
}
