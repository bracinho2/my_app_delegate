import 'package:flutter_modular/flutter_modular.dart';
import 'package:my_app_delegate/app/modules/other_page/other_page.dart';

class OtherPageModule extends Module {
  @override
  List<Bind> get binds => [];

  @override
  List<ModularRoute> get routes => [
        ChildRoute(
          '/',
          child: (context, args) => OtherPage(
            delegate: context.read(),
          ),
        ),
      ];
}
