import 'package:fancy_bottom_navigation_2/fancy_bottom_navigation.dart';
import 'package:flutter/material.dart';
import 'package:ggdk/pages/Homescreen.dart';
import 'package:ggdk/pages/History.dart';

void main() {
  runApp(const MaterialApp(
    home: Hasil(),
  ));
}

class Hasil extends StatefulWidget {
  const Hasil({Key? key}) : super(key: key);

  @override
  State<Hasil> createState() => _HasilState();
}

class _HasilState extends State<Hasil> {
  GlobalKey bottomNavigationKey = GlobalKey();
  int currentPage = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Carian',
          style: TextStyle(
            color: Colors.black,
            fontSize: 30,
            fontFamily: 'Inika',
          ),
        ),
        backgroundColor: Colors.white,
      ),
      body: const Center(
        child: Text("Hasil"),
      ),
      bottomNavigationBar: FancyBottomNavigation(
        initialSelection: 1,
        key: bottomNavigationKey,
        circleColor: const Color.fromARGB(255, 90, 235, 123),
        inactiveIconColor: Colors.white,
        barBackgroundColor: const Color.fromARGB(255, 15, 108, 60),
        tabs: [
          TabData(
              iconData: Icons.home,
              title: 'Home',
              onclick: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const HomePage()));
                currentPage = 0;
              }),

          TabData(iconData: Icons.search, title: 'search', onclick: () {}),

          TabData(
              iconData: Icons.history,
              title: 'History',
              onclick: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const History()));
              }), //You Can Add More
        ],
        onTabChangedListener: (indexPage) {
          setState(() {});
        },
      ),
    );
  }
}
