import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:recordatorios_app/presentation/providers/usuarios/selectPorId_provider.dart';

class HomeScreen extends StatelessWidget {
  static const name = 'home_screen';

  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      automaticallyImplyLeading: false, 
      centerTitle: true, 
      title: const Row(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Text('RECORDATORIOS'),
        ],
      )),

       body: const _HomeBody(),
    );
  }
}

class _HomeBody extends ConsumerStatefulWidget {
  const _HomeBody();

  @override
  _HomeBodyState createState() => _HomeBodyState();
}

class _HomeBodyState extends ConsumerState<_HomeBody> {
  @override
  void initState() {
    super.initState();
    
  }

  @override
  Widget build(BuildContext context) {
    const int id = 7;

  final usuario = ref.watch(selectPorIdProvider(id));

    return SingleChildScrollView(
    child: Column(
      children: [
        usuario.when(
          data: (data) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('ID: ${data.id}'),
                Text('Nombre: ${data.nombre}'),
                Text('Email: ${data.email}'),
                Text('Estado: ${data.estado}'),
              ],
            );
          },
          loading: () {
            return const CircularProgressIndicator();
          },
          error: (error, stack) {
            return Text('Error: $error');
          },
        ),
      ],
    ),
  );
    }

   


}