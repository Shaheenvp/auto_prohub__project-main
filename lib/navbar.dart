
import 'package:autoprohub/user_module/Search/search.dart';
import 'package:autoprohub/user_module/home/home.dart';
import 'package:autoprohub/user_module/profile/profile.dart';
import 'package:autoprohub/user_module/services/services.dart';
import 'package:flutter/material.dart';
class nav extends StatefulWidget {
  nav({Key? key}) : super(key: key);

  @override
  State<nav> createState() => _navState();
}

class _navState extends State<nav> {
  int current_index=0;
  List autoprohub=[
    home(),
    search(),
    services(),
    profile(),

  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: autoprohub[current_index],
        bottomNavigationBar:BottomNavigationBar(
        selectedItemColor: Colors.black87,
        unselectedIconTheme: IconThemeData(color: Colors.grey),
    selectedIconTheme: IconThemeData(color: Colors.black87),
    currentIndex:current_index,
    onTap: (index){
    setState(() {
    current_index=index;
    });
    },
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home,),label: 'Home'),
            BottomNavigationBarItem(icon: Icon(Icons.search_off_outlined,),label: 'Search'),
            BottomNavigationBarItem(icon: Icon(Icons.settings_suggest_outlined,),label: 'Services'),
            BottomNavigationBarItem(icon: Icon(Icons.person_sharp,),label: 'Profile'),





          ],)
    );}}
