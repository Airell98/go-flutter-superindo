import 'package:flutter/material.dart';
import 'app_theme.dart';
import 'routes/router.dart' as app_router;

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = AppTheme.dark();
    return MaterialApp(
      title: 'Todo',
      theme: theme,
      initialRoute: "/",
      onGenerateRoute: app_router.Router.generateRoute,
      debugShowCheckedModeBanner: false,
    );
  }
}