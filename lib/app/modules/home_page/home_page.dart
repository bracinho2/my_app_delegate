import 'package:flutter/material.dart';
import 'package:my_app_delegate/app/core/delegate/my_app_delegate.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key, required this.delegate});

  final MyAppDelegate delegate;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.amber,
        child: const Center(
          child: Text('Home Page'),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(
          Icons.arrow_forward,
        ),
        onPressed: () {
          delegate.goToOther();
        },
      ),
    );
  }
}
