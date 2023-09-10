import 'package:fitness/core/notifiers.dart';
import 'package:fitness/pages/home_page.dart';
import 'package:fitness/widget_tree.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: isDarkModeNotifier,
      builder: (context, isDark, child) {
        return MaterialApp(
          // remove the debug banner
          debugShowCheckedModeBanner: false,
          title: 'Flutter Demo',
          theme: ThemeData(
            brightness: isDark ? Brightness.dark : Brightness.light,
            primarySwatch: Colors.blue,
            useMaterial3: true,
          ),
          home: const WidgetTree(),
        );
      },
    );
  }
}
