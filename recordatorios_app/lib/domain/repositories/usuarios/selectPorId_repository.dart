import 'package:recordatorios_app/domain/entities/usuario.dart';

abstract class SelectporidRepository {
  Future<Usuario> getUsuarioPorId({required int id}); 
}