import 'package:flutter_modular/flutter_modular.dart';
import 'package:my_app_delegate/app/core/auth/app_auth.dart';
import 'package:my_app_delegate/app/core/delegate/my_app_delegate.dart';

class CoreModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.lazySingleton<AppAuth>((i) => AppAuthentication(), export: true),
    Bind.lazySingleton<MyAppDelegate>(
      (i) => MyHomePageFlow(i()),
      export: true,
    )
  ];
}
