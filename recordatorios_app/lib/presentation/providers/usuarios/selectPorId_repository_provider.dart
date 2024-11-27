import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:recordatorios_app/infraestructure/datasources/usuarios/selectPorId_datasource.dart';
import 'package:recordatorios_app/infraestructure/repositories_impl/usuarios/selectPorId_RepositoryImpl.dart';

final selectPorIdRepositoryProvider = Provider((ref){
  return SelectPorIdRepositoryImpl(SelectUsuarioPorId());
});