import 'package:flutter_modular/flutter_modular.dart';
import 'package:my_app_delegate/app/core/delegate/my_app_delegate.dart';

class CoreModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.lazySingleton<MyAppDelegate>(
      (i) => MyHomePageFlow(),
      export: true,
    )
  ];
}
