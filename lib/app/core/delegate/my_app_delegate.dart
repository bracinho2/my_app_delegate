import 'package:flutter_modular/flutter_modular.dart';

abstract class MyAppDelegate {
  Future<void> goTo([Map<String, dynamic>? arguments]);
  Future<Map<String, dynamic>?> goBack([Map<String, dynamic>? arguments]);
}

class MyHomePageFlow implements MyAppDelegate {
  @override
  Future<void> goTo([Map<String, dynamic>? arguments]) async {
    await Modular.to.pushNamed('/my_forward_route', arguments: arguments);
  }

  @override
  Future<Map<String, dynamic>?> goBack(
      [Map<String, dynamic>? arguments]) async {
    Modular.to.pop();
    return arguments;
  }
}
