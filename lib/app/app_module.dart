import 'package:flutter_modular/flutter_modular.dart';
import 'package:my_app_delegate/app/modules/home_page/home_page_module.dart';
import 'package:my_app_delegate/app/modules/other_page/other_page_module.dart';

import 'core/core_module.dart';

class AppModule extends Module {
  @override
  final List<Module> imports = [
    CoreModule(),
  ];

  @override
  List<ModularRoute> get routes => [
        ModuleRoute(
          '/',
          module: HomePageModule(),
        ),
        ModuleRoute(
          '/other/',
          module: OtherPageModule(),
        ),
      ];
}
