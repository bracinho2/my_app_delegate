import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:my_app_delegate/app/core/auth/app_auth.dart';

abstract class MyAppDelegate {
  Future<void> goToOther([Map<String, dynamic>? arguments]);
  Future<Map<String, dynamic>?> goBack([Map<String, dynamic>? arguments]);
}

class MyHomePageFlow implements MyAppDelegate {
  final AppAuth auth;
  final _loggedIn = ValueNotifier<bool>(false);

  MyHomePageFlow(this.auth);
  @override
  Future<void> goToOther([Map<String, dynamic>? arguments]) async {
    await Modular.to.pushNamed('/other/', arguments: arguments);
  }

  @override
  Future<Map<String, dynamic>?> goBack(
      [Map<String, dynamic>? arguments]) async {
    Modular.to.pop();
    return arguments;
  }

  void isLogged() {
    _loggedIn.value = true;
  }
}
