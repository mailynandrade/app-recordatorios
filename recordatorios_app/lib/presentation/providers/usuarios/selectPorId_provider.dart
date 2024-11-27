import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:recordatorios_app/domain/entities/usuario.dart';
import 'package:recordatorios_app/presentation/providers/usuarios/selectPorId_repository_provider.dart';

final selectPorIdProvider = FutureProvider.family<Usuario, int>((ref, id) async {
  
  final usuarioRepository = ref.watch(selectPorIdRepositoryProvider);
  return await usuarioRepository.getUsuarioPorId(id: id);
});
