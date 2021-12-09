import 'package:flutter/material.dart';
// import './tags.dart';
import './todo_list.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final DateTime _today = DateTime.now();
  final PageController _controller =
      PageController(initialPage: 0, viewportFraction: 1.0);
  int _currentIndex = 0;
  final List<Map<String, dynamic>> _pages = [
    {
      "name": "Task",
      "widget": TodoListScreen(),
      "icon": Icons.description,
    },
    // {
    //   "name": "Tags",
    //   "widget": TagsPage(),
    //   "icon": Icons.tag,
    // },
  ];
  final Map<int, String> _months = {
    1: "Jan",
    2: "Feb",
    3: "Mar",
    4: "Apr",
    5: "May",
    6: "Jun",
    7: "Jul",
    8: "Aug",
    9: "Sep",
    10: "Oct",
    11: "Nov",
    12: "Dec",
  };
  final Map<int, String> _weekdays = {
    1: "Monday",
    2: "Tuesday",
    3: "Wednesday",
    4: "Thursday",
    5: "Friday",
    6: "Saturday",
    7: "Sunday",
  };

  void _navigateTo(int index) {
    setState(() {
      _currentIndex = index;
    });
    _controller.animateToPage(
      index,
      curve: Curves.linear,
      duration: const Duration(milliseconds: 200),
    );
    Navigator.of(context).pop();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: Center(
          child: ListView(
            shrinkWrap: true,
            children: <Widget>[
              ..._pages
                  .asMap()
                  .map(
                    (i, page) => MapEntry(
                      i,
                      Center(
                        child: Container(
                          width: MediaQuery.of(context).size.width * 0.7,
                          decoration: BoxDecoration(
                            color: _currentIndex == i
                                ? Colors.grey[800]
                                : Colors.transparent,
                            borderRadius: BorderRadius.circular(50),
                          ),
                          child: ListTile(
                            // leading: Icon(
                            //   page["icon"],
                            //   color: Colors.black54,
                            // ),
                            title: Text(
                              page["name"] as String,
                              style: TextStyle(
                                color: _currentIndex == i
                                    ? Colors.white
                                    : Colors.black54,
                                letterSpacing: 1.0,
                                fontWeight: FontWeight.w800,
                              ),
                            ),
                            trailing: _currentIndex == i
                                ? Icon(
                                    Icons.arrow_forward_ios,
                                    color: Colors.white,
                                  )
                                : null,
                            onTap: () {
                              _navigateTo(i);
                            },
                          ),
                        ),
                      ),
                    ),
                  )
                  .values
                  .toList(),
              Center(
                child: Container(
                  width: MediaQuery.of(context).size.width * 0.7,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                  ),
                  child: ListTile(
                    // leading: Icon(
                    //   Icons.exit_to_app,
                    //   color: Colors.black54,
                    // ),
                    title: Text(
                      "About",
                      style: TextStyle(
                        color: Colors.white,
                        letterSpacing: 1.0,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                    onTap: () { Navigator.pushNamed(context, "/about");},
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      appBar: AppBar(
        title: Text(
          "${_currentIndex == 0 ? "Todo" : _pages[_currentIndex]["name"]}",
          style: const TextStyle(
            fontSize: 40,
            letterSpacing: 1.0,
          ),
        ),
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              icon: Icon(Icons.list),
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
            );
          },
        ),
        actions:const <Widget>[
          Padding(
            padding: EdgeInsets.only(right: 16.0),
            child: Icon(Icons.search),
          ),
        ],
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(125.0),
          child: Container(
            height: 125.0,
            decoration: BoxDecoration(
              color: Theme.of(context).primaryColor,
            ),
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Row(),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 64.0, vertical: 2.0),
                  child: Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const <Widget>[
                        Padding(
                          padding: EdgeInsets.symmetric(vertical: 2.0),
                          child: Icon(Icons.account_circle, size: 35.0, color: Colors.white,),
                        ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(0.0,4.0,0.0,3.0),
                          child: Text("Hello, <User>.", style: TextStyle(fontSize: 20.0, color: Colors.white),),
                        ),
                        Text("Looks like feel good.", style: TextStyle(color: Colors.white),),
                        Text("You have some tasks to do today.", style: TextStyle(color: Colors.white,),),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        child: PageView(
          controller: _controller,
          physics: const NeverScrollableScrollPhysics(),
          scrollDirection: Axis.horizontal,
          children: <Widget>[
            ..._pages
                .asMap()
                .map(
                  (i, page) =>
                      MapEntry<int, Widget>(i, page["widget"] as Widget),
                )
                .values
                .toList()
          ],
        ),
      ),
    );
  }
}
