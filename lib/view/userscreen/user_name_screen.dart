// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_application_netflix_clone/dummy_db.dart';
import 'package:flutter_application_netflix_clone/utils/color_constants.dart';
import 'package:flutter_application_netflix_clone/utils/image_constants.dart';
import 'package:flutter_application_netflix_clone/view/bottom_navbar_screen/bottom_navbar_screen.dart';
import 'package:flutter_application_netflix_clone/view/global_widgets/user_name_card.dart';
import 'package:flutter_application_netflix_clone/view/homescreen/homescreen.dart';

class UserNameScreen extends StatelessWidget {
  const UserNameScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstants.mainBlack,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: ColorConstants.mainBlack,
        title: Image.asset(
          ImageConstants.LOGO,
          height: 37,
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.edit,
                color: Colors.white,
              ))
        ],
      ),
      body: Center(
        child: GridView.builder(
            shrinkWrap: true,
            padding: EdgeInsets.symmetric(horizontal: 75),
            itemCount: DummyDb.userList.length + 1,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisSpacing: 25,
                mainAxisSpacing: 22,
                crossAxisCount: 2,
                mainAxisExtent: 121),
            itemBuilder: (context, index) => index < DummyDb.userList.length
                ? UserNameCard(
                    name: DummyDb.userList[index]["name"],
                    image: DummyDb.userList[index]["imagePath"],
                    onCardTapped: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => BottomNavbarScreen(),
                          ));
                    },
                  )
                : UserNameCard(
                    name: "Add",
                    image: ImageConstants.ADD_BUTTON,
                    onCardTapped: () {
                      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                          backgroundColor: ColorConstants.red,
                          content: Text("Feature not available")));
                    },
                  )),
      ),
    );
  }
  }