import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:kanu/Screens/home_screen.dart';
import 'package:kanu/Screens/publishing_screen.dart';
import 'package:kanu/Screens/software_screen.dart';
import 'package:kanu/Screens/studio_screen.dart';
import 'package:kanu/Widgets/NavigationDrawerWidget.dart';
import 'package:kanu/Widgets/app_bar_widget.dart';

class AnimatedBottomNavigationBarScreen extends StatefulWidget {
  AnimatedBottomNavigationBarScreen({
    Key? key,
  }) : super(key: key);

  @override
  State<AnimatedBottomNavigationBarScreen> createState() =>
      _AnimatedBottomNavigationBarScreenState();
}

class _AnimatedBottomNavigationBarScreenState
    extends State<AnimatedBottomNavigationBarScreen> {
  int _index = 0;
  final _screens = [
    HomeScreen(),
    SoftwareScreen(),
    StudioScreen(),
    PublishingScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    final screensName = <String>['Home', 'Software', 'Studio', 'Publishing'];

    final navigationItems = <Widget>[
      Icon(Icons.home, semanticLabel: 'Home', size: 30),
      Icon(Icons.app_shortcut, semanticLabel: 'Software', size: 30),
      Icon(Icons.music_note, semanticLabel: 'Studio', size: 30),
      Icon(Icons.menu_book, semanticLabel: 'Publishing', size: 30),
    ];

    return Scaffold(
      appBar: AppBarWidget(title: screensName[_index]),
      body: _screens[_index],
      drawer: NavigationDrawerWidget(),
      bottomNavigationBar: Theme(
        data: Theme.of(context).copyWith(
            iconTheme: IconThemeData(
          color: Color.fromARGB(255, 16, 38, 60),
        )),
        child: CurvedNavigationBar(
            index: this._index,
            backgroundColor: Colors.transparent,
            color: Color.fromARGB(255, 115, 149, 244),
            buttonBackgroundColor: Colors.orange[400],
            height: 50,
            items: navigationItems,
            onTap: (index) {
              setState(() {
                this._index = index;
              });
            }),
      ),
      // ),
    );
  }
}
