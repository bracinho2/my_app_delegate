import 'package:flutter/material.dart';
import 'package:my_app_delegate/app/core/delegate/my_app_delegate.dart';

class OtherPage extends StatelessWidget {
  const OtherPage({super.key, required this.delegate});

  final MyAppDelegate delegate;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.amber,
        child: const Center(
          child: Text('Other Page'),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(
          Icons.arrow_back,
        ),
        onPressed: () {
          delegate.goBack();
        },
      ),
    );
  }
}
