import 'package:go_router/go_router.dart';
import 'package:recordatorios_app/presentation/screens/home_screen.dart';


final appRouter = GoRouter(routes: [

  //pantalla de registro
  GoRoute(
      path: '/',
      name: HomeScreen.name,
      builder: (context, state) => const HomeScreen()
    )
   
]);