import 'package:flutter/material.dart';

class UnknownRoutePage extends StatelessWidget {
  final String routeName;

  const UnknownRoutePage({super.key, required this.routeName});

  @override
  Widget build(BuildContext context) {
    // nicely display the error
    return Scaffold(
      body: Center(
        child: Text(
          "The route `$routeName` is not registered. This is a bug.",
          style: Theme.of(context).textTheme.headlineMedium,
        ),
      ),
    );
  }
}
