import 'package:flutter/material.dart';
import 'package:fancy_bottom_navigation_2/fancy_bottom_navigation.dart';
import 'package:ggdk/pages/Hasil.dart';
import 'package:ggdk/pages/Homescreen.dart';

class History extends StatefulWidget {
  const History({super.key});

  @override
  State<History> createState() => _HistoryState();
}

class _HistoryState extends State<History> {
// Index for the selected tab
  GlobalKey bottomNavigationKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            ' Sejarah Carian',
            style: TextStyle(
              color: Colors.black,
              fontSize: 30,
              fontFamily: 'Inika',
            ),
          ),
          backgroundColor: Colors.white,
        ),
        body: const Center(
          child: Text('ini sejarah anda'),
        ),
        bottomNavigationBar: FancyBottomNavigation(
          initialSelection: 2,
          key: bottomNavigationKey,
          circleColor: const Color.fromARGB(255, 90, 235, 123),
          inactiveIconColor: Colors.white,
          barBackgroundColor: const Color.fromARGB(255, 15, 108, 60),
          tabs: [
            TabData(
                iconData: Icons.home,
                title: 'Home',
                onclick: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const HomePage()));
                }),
            TabData(
                iconData: Icons.search,
                title: 'search',
                onclick: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const Hasil()));
                }),

            TabData(
                iconData: Icons.history,
                title: 'History',
                onclick: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const History()));
                }) //You Can Add More
          ],
          onTabChangedListener: (indexPage) {
            setState(() {});
          },
        ),
      ),
    );
  }
}
