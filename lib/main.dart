import 'package:flutter/material.dart';
import 'package:lifetasks/core/log.dart';
import 'package:lifetasks/router.dart';

void main() {
  runApp(const MyApp());
  info("App initialized");
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'LifeTasks',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      onGenerateRoute: generateRoutes,
    );
  }
}
