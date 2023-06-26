import 'package:flutter/material.dart';

class BottomNavBarWidget extends StatefulWidget {
  const BottomNavBarWidget({super.key});

  @override
  State<BottomNavBarWidget> createState() => _BottomNavBarWidgetState();
}

class _BottomNavBarWidgetState extends State<BottomNavBarWidget> {
  static const TextStyle _textStyle =
      TextStyle(fontSize: 20, color: Colors.orange);
  //create list of page
  int selectedIndex = 0;
  static const List pagesList = [
    Text(
      "Home",
      style: _textStyle,
    ),
    Text(
      "Wishlist",
      style: _textStyle,
    ),
    Text(
      'Profile',
      style: _textStyle,
    )
  ];

  @override
  Widget build(BuildContext context) {
    // now reload
    return Scaffold(
      // we will assign pages to body
      body: Center(
        child: pagesList.elementAt(selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(Icons.favorite), label: 'Wishlist'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
        ],
        currentIndex: selectedIndex,
        selectedItemColor: Colors.orange,
        onTap: (index) {
          setState(() {
            selectedIndex = index;
          });
        },
      ),
    );
  }
}
