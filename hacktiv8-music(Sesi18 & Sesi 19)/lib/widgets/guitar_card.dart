// ignore_for_file: prefer_const_constructors_in_immutables, deprecated_member_use

import 'package:flutter/material.dart';

class GuitarCard extends StatelessWidget {
  final String brand;
  final String type;
  final double price;
  final String desc;
  final String imgUrl;

  GuitarCard({
    Key? key,
    required this.brand,
    required this.type,
    required this.price,
    required this.desc,
    required this.imgUrl,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Card(
      elevation: 2,
      child: Padding(
        padding: const EdgeInsets.all(
          6.0,
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Expanded(
              flex: 2,
              child: Container(
                height: 140,
                padding: const EdgeInsets.all(0),
                child: Image.network(
                  imgUrl,
                  scale: 0.2,
                  fit: BoxFit.contain,
                ),
              ),
            ),
            Expanded(
              flex: 3,
              child: Padding(
                padding: const EdgeInsets.fromLTRB(5.0, 0.0, 0.0, 0.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(brand,
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20.0,
                        )),
                    const Padding(padding: EdgeInsets.symmetric(vertical: 2.0)),
                    Text(type,
                        // ignore: prefer_const_constructors
                        style: const TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 15.0,
                        )),
                    const Padding(padding: EdgeInsets.symmetric(vertical: 5.0)),
                    Text(desc,
                        overflow: TextOverflow.ellipsis,
                        maxLines: 4,
                        style: const TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 14.0,
                        )),
                    FlatButton(
                      color: Theme.of(context).primaryColor,
                      onPressed: () {},
                      child: const Text('Edit',
                          style: TextStyle(color: Colors.white)),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
