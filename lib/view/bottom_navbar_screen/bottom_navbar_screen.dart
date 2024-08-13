import 'package:flutter/material.dart';
import 'package:flutter_application_netflix_clone/utils/color_constants.dart';
import 'package:flutter_application_netflix_clone/view/coming_soon_screen/coming_soon_screen.dart';
import 'package:flutter_application_netflix_clone/view/homescreen/homescreen.dart';
import 'package:flutter_application_netflix_clone/view/notification_screen/notification_screen.dart';
import 'package:flutter_application_netflix_clone/view/search_screen/search_screen.dart';

class BottomNavbarScreen extends StatefulWidget {
  const BottomNavbarScreen({super.key});

  @override
  State<BottomNavbarScreen> createState() => _BottomNavbarScreenState();
}

class _BottomNavbarScreenState extends State<BottomNavbarScreen> {
List ScreensList = [
  HomeScreen(),
  SearchScreen(),
   ComingSoonScreen(),
    NotificationScreen(),
     Container(color: Colors.green,)
];
int selecteIndex = 0;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstants.mainBlack,
      body: ScreensList[selecteIndex],
      
      bottomNavigationBar: BottomNavigationBar(
        selectedLabelStyle: TextStyle(fontSize: 10),
        unselectedLabelStyle: TextStyle(fontSize: 10),

        type: BottomNavigationBarType.fixed,
        backgroundColor: ColorConstants.mainBlack,
        selectedItemColor: ColorConstants.mainWhite,
        unselectedItemColor: ColorConstants.grey,
        
        
        
        items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.home),label: "Home"),
          BottomNavigationBarItem(
          icon: Icon(Icons.search),label: "Search"),
          BottomNavigationBarItem(
          icon: Icon(Icons.collections_rounded),label: "Coming soon"),
          BottomNavigationBarItem(
          icon: Icon(Icons.download),label: "Download"),
          BottomNavigationBarItem(
          icon: Icon(Icons.menu),label: "More"),
      ],
      onTap: (value) {
        selecteIndex = value;
        setState(() {
          
        });
      },
      ),
    );
  }
}