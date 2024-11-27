import 'package:recordatorios_app/domain/datasources/usuarios/selectPorId_datasource.dart';
import 'package:recordatorios_app/domain/entities/usuario.dart';

class SelectPorIdRepositoryImpl extends SelectPorIdDatasource{
  final SelectPorIdDatasource datasource;
  SelectPorIdRepositoryImpl(this.datasource);

  @override
  //getUsuarioPorId
  Future<Usuario> getUsuarioPorId({required int id}) async {
    return datasource.getUsuarioPorId(id: id);
   }
}