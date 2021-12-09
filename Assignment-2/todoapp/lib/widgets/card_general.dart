import 'package:flutter/material.dart';

import '../app_theme.dart';
import '../models/models.dart';

class Card1 extends StatelessWidget {
  final Todo todo;

  const Card1({
    Key? key,
    required this.todo,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(8.0),
        child: InkWell(
          onTap: () {
            Navigator.pushNamed(context, "/todos/detail", arguments: todo);
          },
          child: Card(
            child: Container(
              width: 250.0,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const <Widget>[
                        Icon(Icons.access_alarm, color: Colors.white),
                        Icon(
                          Icons.more_vert,
                          color: Colors.white,
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 8.0, vertical: 4.0),
                          child: Text(
                            "${todo.subtasks.length} Tasks",
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 8.0, vertical: 4.0),
                          child: Text(
                            "${todo.title}",
                            style: TextStyle(fontSize: 28.0),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: LinearProgressIndicator(
                              value: todo.progress),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0)),
            color: Colors.blueGrey,
          ),
        ));
    /*return Center(
      child: Container(
        child: Stack(
          children: [
            Text(
              todo.subtitle,
              style: AppTheme.darkTextTheme.bodyText1,
            ),
            Positioned(
              child: Text(
                todo.title,
                style: AppTheme.darkTextTheme.headline2,
              ),
              top: 20,
            ),
            Positioned(
              child: Text(
                todo.subtitle,
                style: AppTheme.darkTextTheme.bodyText1,
              ),
              bottom: 30,
              right: 0,
            ),
            Positioned(
              child: Text(
                todo.userName,
                style: AppTheme.darkTextTheme.bodyText1,
              ),
              bottom: 10,
              right: 0,
            )
          ],
        ),
        padding: const EdgeInsets.all(16),
        constraints: const BoxConstraints.expand(
          width: 350,
          height: 450,
        ),
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(todo.backgroundImage),
            fit: BoxFit.cover,
          ),
          borderRadius: const BorderRadius.all(
            Radius.circular(10.0),
          ),
        ),
      ),
    );*/
  }
}
