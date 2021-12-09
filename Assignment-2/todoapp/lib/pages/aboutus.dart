import 'package:flutter/material.dart';


class AboutUs extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<AboutUs> {
  @override
  Widget build(BuildContext context) {
    final _height =
        MediaQuery.of(context).size.height - MediaQuery.of(context).padding.top;

    final _width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar( //appbar widget on Scaffold
          backgroundColor: Colors.black, //background color of appbar
          leading: Container(
                        decoration: const BoxDecoration(
                            shape: BoxShape.circle, color: Colors.transparent),
                        child: const BackButton(
                          color: Colors.blueGrey,
                        ),
                      ),
    ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Container(
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [Colors.black87, Colors.black54]
                    )
                ),
                child: Container(
                  height: _height*0.35,
                  child: Center(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Container(
                          child: Image(
                            height: _height*0.2,
                            image: AssetImage('assets/images/logo.png'),
                          ),
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        Text(
                          "Hack Technologies",
                          style: TextStyle(
                            fontSize: 22.0,
                            color: Colors.white,
                            fontWeight: FontWeight.bold
                          ),
                        ),
                      ],
                    ),
                  ),
                )
            ),
            Container(
              child: Padding(
                padding: const EdgeInsets.symmetric(
                    vertical: 30.0, horizontal: 16.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      "About Us",
                      style: TextStyle(
                          color: Colors.white,
                          fontStyle: FontStyle.normal,
                          fontWeight: FontWeight.bold,
                          fontSize: 30.0
                      ),
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    Divider(color: Colors.black,),
                    SizedBox(
                      height: 20.0,
                    ),
                    Text(
                      'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Scelerisque eu ultrices vitae auctor eu augue.' + '\n\n' + 'Ullamcorper morbi tincidunt ornare massa eget egestas. Feugiat in fermentum posuere urna nec. Quisque id diam vel quam elementum pulvinar. Augue ut lectus arcu bibendum at varius vel pharetra vel. Habitasse platea dictumst vestibulum rhoncus est pellentesque elit ullamcorper dignissim.' + '\n\n' + 'Nunc sed velit dignissim sodales ut eu sem. Morbi quis commodo odio aenean sed adipiscing diam donec. Ac auctor augue mauris augue neque gravida in. Morbi tempus iaculis urna id volutpat lacus laoreet.',
                      style: TextStyle(
                        fontSize: 20.0,
                        fontStyle: FontStyle.italic
                      ),
                      textAlign: TextAlign.justify,
                    ),
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
