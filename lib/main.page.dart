import 'dart:ffi';

import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});
  

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
 Void

  int _selectedIndex = 0;
  final List<Widget> _pages = [
    //screen1
    Container(),
    //screen2
    Container(),
    //screen3
    Container(),
    //screen4
  ];

  void _OnItemTapped (int index){
    setState(() {
      _selectedIndex = index;
    });

  }

  Widget buildNavBarItem (IconData filledIcon, IconData outlineIcon, String text, Int index){
    return GestureDetector(
      onTap: () => _OnItemTapped(index),
      child: Padding(
        padding: EdgeInsets.only(top: 15),
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.symmetric(vertical: 5,horizontal: 25),
              decoration: BoxDecoration(
                color: 
                  _selectedIndex == index ? Color(0xFFD8FDD2) : Colors.white,
                  borderRadius: BorderRadius.circular(20),
              ),
              child: Icon(
                _selectedIndex == index ? filledIcon : outlineIcon,
                size: 28,
                color: Colors.black,
              ),
            ),
            SizedBox(height: 8),
            Text(text,
            style: TextStyle(
              fontSize: 16,
              fontWeight: 
                _selectedIndex == index ? FontWeight.w900 : FontWeight.w500,
                color: Colors.black,
            ),
            )
          ],
        ),),
    );

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages = [_selectedIndex],
      bottomNavigationBar: Container(
        height: 135,
        decoration: BoxDecoration(
          border: Border(
            top: BorderSide(color: Colors.black, width: 0.4),

          )
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            buildNavBarItem(Icons.message, Icons.message_outlined, "chats", 0 ),
            buildNavBarItem(Icons.update, Icons.update_outlined, "updates", 1 ),
            buildNavBarItem(Icons.people, Icons.people_outlined, "Communications", 2 ),
            buildNavBarItem(Icons.call, Icons.call_outlined, "calls", 3 )
          ],
        ),
      ),
    );
  }
}  