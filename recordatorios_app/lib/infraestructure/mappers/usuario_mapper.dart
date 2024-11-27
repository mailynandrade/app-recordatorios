import 'package:recordatorios_app/domain/entities/usuario.dart';
import 'package:recordatorios_app/infraestructure/models/usuarioData.dart';

class UsuarioMapper {
  static Usuario usuarioToEntity(UsuarioData data) => Usuario(
    id: data.id,
    nombre: data.nombre,
    email: data.email,
    clave: data.clave,
    estado: data.estado,
  );
}