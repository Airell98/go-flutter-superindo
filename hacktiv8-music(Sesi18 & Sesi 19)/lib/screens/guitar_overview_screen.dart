// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, prefer_final_fields, avoid_print

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../providers/guitar_provider.dart';
import '../providers/auth_provider.dart';

import '../widgets/guitar_card.dart';

class GuitarOverviewScreen extends StatefulWidget {
  @override
  _GuitarOverviewScreen createState() {
    return _GuitarOverviewScreen();
  }
}

class _GuitarOverviewScreen extends State<GuitarOverviewScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Theme.of(context).primaryColor,
          title: Text('Hacktiv8 Music Shop'),
          actions: [
            IconButton(
                onPressed: () async {
                  await Provider.of<AuthProvider>(context, listen: false)
                      .logout();
                },
                icon: Icon(Icons.logout_outlined)),
          ]),
      body: FutureBuilder(
        future: Provider.of<GuitarProvider>(context, listen: false)
            .fetchAndSetProducts(),
        builder: (ctx, dataSnapshot) {
          if (dataSnapshot.connectionState == ConnectionState.waiting) {
            return Center(
              child: CircularProgressIndicator(),
            );
          } else {
            if (dataSnapshot.error != null) {
              return Center(
                child: Text(
                  'something went wrong',
                  style: TextStyle(color: Colors.red),
                ),
              );
            } else {
              return Consumer<GuitarProvider>(
                builder: (ctx, guitar, ch) {
                  final guitarDatas = guitar.guitars;
                  return ListView(
                    // ignore: prefer_const_literals_to_create_immutables
                    children: guitarDatas
                        .map(
                          (guitar) => GuitarCard(
                            key: ValueKey(guitar.id),
                            brand: guitar.brand,
                            type: guitar.type,
                            price: guitar.price,
                            desc: guitar.desc,
                            imgUrl: guitar.imgUrl,
                          ),
                        )
                        .toList(),
                  );
                },
              );
            }
          }
        },
      ),
    );
  }
}
