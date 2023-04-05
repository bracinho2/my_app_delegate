import 'package:flutter_modular/flutter_modular.dart';
import 'package:my_app_delegate/app/modules/home_page/home_page.dart';

class HomePageModule extends Module {
  @override
  List<Bind> get binds => [];

  @override
  List<ModularRoute> get routes => [
        ChildRoute(
          '/',
          child: (context, args) => const HomePage(),
        ),
      ];
}
