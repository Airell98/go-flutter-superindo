// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';
import '../widgets/login_card.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Center(
        child: Container(
          color: Colors.white,
          padding: const EdgeInsets.all(36.0),
          child: FormCard(),
        ),
      ),
    );
  }
}
