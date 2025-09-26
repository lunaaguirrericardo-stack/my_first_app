import 'package:flutter/material.dart';
import 'package:my_first_app/router/app_routes.dart';
import 'package:my_first_app/themes/app_theme.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      //home: CardScreen(),
      initialRoute: AppRoutes.initialRoute,
      routes: AppRoutes.getAppRoutes(),
      onGenerateRoute:  AppRoutes.onGenerateRoute,
      //El copywith() toma los elementos del tema y solo sobreescribe lo que especifiquemos
      theme: AppTheme.nightTheme
    );
  }
}