import 'package:agui/screens/home.dart';
import 'package:agui/screens/signin.dart';
import 'package:agui/values/values.dart';
import 'package:flutter/material.dart';

class BottomBar extends StatefulWidget {
  @override
  _BottomBarState createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: HomePage(),
      bottomNavigationBar: BottomNavigationBar(
        onTap: (value) {},
        selectedItemColor: pink,
        unselectedItemColor: Colors.grey,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Image.asset("assets/images/sale.png"),
            label: "Packages",
          ),
          BottomNavigationBarItem(
            icon: Image.asset("assets/images/clockbar.png"),
            label: "Bookings",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_add_alt_1_outlined),
            label: "Profile",
          ),
        ],
      ),
    );
  }
}
