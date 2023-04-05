import 'package:flutter/material.dart';

abstract class AppAuth {
  Future<void> loggedIn();
}

class AppAuthentication implements AppAuth {
  final isLogged = ValueNotifier<bool>(false);
  @override
  Future<void> loggedIn() async {
    isLogged.value = true;
  }
}
