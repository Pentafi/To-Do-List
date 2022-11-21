import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'homepage.dart';
import 'Task.dart';

void main() => runApp(const ToDoListApp());
class ToDoListApp extends StatelessWidget {
  const ToDoListApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => TaskProvider(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          fontFamily: 'Lato',
          textTheme: ThemeData.light().textTheme.copyWith(
                subtitle1: const TextStyle(
                  color: Colors.purple,
                  fontFamily: 'Lato',
                  fontWeight: FontWeight.bold,
                  fontSize: 28,
                ),
                subtitle2: const TextStyle(
                  color: Colors.purple,
                  fontFamily: 'Lato',
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
          appBarTheme: AppBarTheme(
            toolbarTextStyle: ThemeData.light().textTheme.copyWith(
                  subtitle1: const TextStyle(
                    color: Colors.white,
                    fontFamily: 'Lato',
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ).bodyText2, titleTextStyle: ThemeData.light().textTheme.copyWith(
                  subtitle2: const TextStyle(
                    color: Colors.white,
                    fontFamily: 'Lato',
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ).headline6,
          ), colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.purple).copyWith(secondary: Colors.yellow[700]),
        ),
        title: 'To Do List',
        home: Homepage(),
      ),
    );
  }
}
