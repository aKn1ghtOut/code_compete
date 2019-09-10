// Flutter code sample for material.BottomNavigationBar.1

// This example shows a [BottomNavigationBar] as it is used within a [Scaffold]
// widget. The [BottomNavigationBar] has three [BottomNavigationBarItem]
// widgets and the [currentIndex] is set to index 0. The selected item is
// amber. The `_onItemTapped` function changes the selected item's index
// and displays a corresponding message in the center of the [Scaffold].
//
// ![A scaffold with a bottom navigation bar containing three bottom navigation
// bar items. The first one is selected.](https://flutter.github.io/assets-for-api-docs/assets/material/bottom_navigation_bar.png)
import 'package:flutter/services.dart';
import 'package:flutter/material.dart';

import './pages/Home.dart';
import './pages/Platforms.dart';
import './pages/FAQ.dart';
import './pages/About.dart';

void main(){
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp])
  .then((_) {
    runApp(new MyApp());
  });
}

/// This Widget is the main application widget.
class MyApp extends StatelessWidget {
  static const String _title = 'Flutter Code Sample';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      home: MyStatefulWidget(),
    );
  }
}

class MyStatefulWidget extends StatefulWidget {
  MyStatefulWidget({Key key}) : super(key: key);

  @override
  _MyStatefulWidgetState createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {

  int _selectedIndex = 0;
  static HomePage _homePage = new HomePage();
  static PlatformPage _platformPage = new PlatformPage();
  static FAQPage _faqPage = new FAQPage();
  static AboutPage _aboutPage = new AboutPage();

  static const TextStyle optionStyle = TextStyle(fontSize: 30, fontWeight: FontWeight.bold);

  List<Widget> _widgetOptions = <Widget>[
    _homePage,
    _platformPage,
    _faqPage,
    _aboutPage
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: null,
      body: _widgetOptions.elementAt(_selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text('Upcoming'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.business),
            title: Text('Platforms'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.question_answer),
            title: Text('FAQ'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.business),
            title: Text('About'),
          ),
        ],
        currentIndex: _selectedIndex,
        backgroundColor: Colors.white,
        elevation: 0,
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.black45,
        onTap: _onItemTapped,
        showUnselectedLabels: true,
      ),
    );
  }
}
