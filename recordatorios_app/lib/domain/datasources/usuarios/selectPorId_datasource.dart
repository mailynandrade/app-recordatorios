import "package:recordatorios_app/domain/entities/usuario.dart";

//metodo para obtener usuario por Id
abstract class SelectPorIdDatasource { 
  Future<Usuario> getUsuarioPorId({required int id}); 
}