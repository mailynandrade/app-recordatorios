import 'package:dio/dio.dart';
import 'package:recordatorios_app/config/constant/enviroment.dart';
import 'package:recordatorios_app/domain/datasources/usuarios/selectPorId_datasource.dart';
import 'package:recordatorios_app/domain/entities/usuario.dart';
import 'package:recordatorios_app/infraestructure/mappers/usuario_mapper.dart';
import 'package:recordatorios_app/infraestructure/models/usuarioResponse.dart';

class SelectUsuarioPorId extends SelectPorIdDatasource{
  final dio = Dio(BaseOptions(baseUrl: Environment.appUrl));

  @override
  Future<Usuario> getUsuarioPorId({required int id}) async {
    try {
      final response = await dio.get('/usuarios/$id');

      //router.get('/:id', seleccionarPorId);

      // Si la respuesta es exitosa, se procesa el JSON
      final objResponse = UsuarioResponse.fromJson(response.data);

      if (objResponse.body.isNotEmpty) {
        //se obtiene el único elemento del array
        final Usuario receta = UsuarioMapper.usuarioToEntity(objResponse.body[0]);
        return receta;
      } else {
        throw Exception('No se encontró un usuario para el id: $id');
      }
    } on DioException catch (e) {
      // Manejo de errores de Dio
      String? errorMessage;

      if (e.response != null) {
        // El servidor respondió con un código de estado que indica un error
        errorMessage = 'Error ${e.response?.statusCode}: ${e.response?.data}';
      } else {
        // Error de conexión o de otro tipo
        errorMessage = e.message;
      }

      throw Exception(errorMessage);
    } catch (e) {
      // Manejo de cualquier otro tipo de error
      throw Exception('Un error inesperado ha ocurrido: $e');
    }
  }
}