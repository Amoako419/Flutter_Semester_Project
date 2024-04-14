// ignore: file_names
import 'package:flutter/material.dart';
import 'package:health_monitor/pages/favorite.dart';
import 'package:health_monitor/pages/home_page.dart';
import 'package:health_monitor/pages/profile.dart';

class FirstPage extends StatefulWidget {
  const FirstPage({super.key});

  @override
  State<FirstPage> createState() => _FirstPageState();
}


class _FirstPageState extends State<FirstPage> {
  int _selectedIndex = 0;
  void _navigateBottomBar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  final List _pages =[
  
    const Homepage(), 
    const Favorite(),
    const Profile(),

  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     
      body: _pages[_selectedIndex],
       bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _navigateBottomBar,
        items: const [
     
        //home
        BottomNavigationBarItem(icon: Icon(Icons.home),
        label: 'Home',
        activeIcon: Icon(Icons.home_filled),
        
        ),   //favorite
        BottomNavigationBarItem(icon: Icon(Icons.favorite),
        label: 'Favorites',
        
        ),
        //profile
        BottomNavigationBarItem(icon: Icon(Icons.person_2_rounded),
        label: 'Profile',
        ),
      ]),
    );
  }
}