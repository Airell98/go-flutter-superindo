import 'package:flutter/material.dart';

import 'app_theme.dart';
import 'home.dart';

void main() {
  runApp(const Foodies());
}

class Foodies extends StatelessWidget {
  const Foodies({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final theme = AppTheme.dark();
    return MaterialApp(
      theme: theme,
      title: 'Foodies',
      home: const Home(),
    );
  }
}
