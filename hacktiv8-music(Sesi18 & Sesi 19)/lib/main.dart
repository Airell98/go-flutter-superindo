import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import './providers/guitar_provider.dart';

import './providers/auth_provider.dart';

import './screens/guitar_overview_screen.dart';
import './screens/login_screen.dart';
import './screens/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => AuthProvider(),
        ),
        ChangeNotifierProxyProvider<AuthProvider, GuitarProvider>(
          update: (ctx, auth, _) => GuitarProvider(auth.token),
          create: (ctx) => GuitarProvider(''),
        ),
      ],
      child: MaterialApp(
          title: 'Flutter Demo',
          theme: ThemeData(
            primaryColor: const Color(0XffF57E10),
            primarySwatch: Colors.blue,
          ),
          home: Consumer<AuthProvider>(
            builder: (ctx, authProvider, _) {
              return authProvider.token.isNotEmpty
                  ? GuitarOverviewScreen()
                  : FutureBuilder(
                      future: authProvider.autoLogin(),
                      builder: (context, dataSnapshot) {
                        if (dataSnapshot.connectionState ==
                            ConnectionState.waiting) {
                          return SplashScreen();
                        } else {
                          if (dataSnapshot.data == false) {
                            return LoginScreen();
                          } else {
                            return GuitarOverviewScreen();
                          }
                        }
                      },
                    );
            },
          )),
    );
    // return
  }
}
// LoginScreen()