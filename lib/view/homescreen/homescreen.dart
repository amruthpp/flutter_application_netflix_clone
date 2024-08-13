// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_application_netflix_clone/dummy_db.dart';
import 'package:flutter_application_netflix_clone/utils/color_constants.dart';
import 'package:flutter_application_netflix_clone/utils/image_constants.dart';
import 'package:flutter_application_netflix_clone/view/homescreen/widgets/coustom_poster_builder.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});


  @override
  Widget build(BuildContext context) {
     return Scaffold(
      backgroundColor: ColorConstants.mainBlack,
      body: SingleChildScrollView(
        child: Column(
          children: [
            // #1 top ten section
            _buildTopTenSection(),
            SizedBox(height: 11),
            //#2 play button section
            _buildPlayButtonSection(),
            SizedBox(height: 15),
            CustomPosterBuilder(
            
              imagesList: DummyDb.imagesList1,
              title: "Previews",
              width: 102,
              isCircle: true,
            ),
            CustomPosterBuilder(
             isInfoVisible: true,
              imagesList: DummyDb.imagesList1,
              title: "Continue Watching for Emenalo",
            ),
            CustomPosterBuilder(
              imagesList: DummyDb.imagesList1,
              title: "Popular on Netflix",
              height: 251,
              width: 154,
            ),
            CustomPosterBuilder(
             
              imagesList: DummyDb.imagesList1,
              title: "Continue Watching for Emenalo",
            ),
            CustomPosterBuilder(
           
              imagesList: DummyDb.imagesList1,
              title: "Continue Watching for Emenalo",
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildPlayButtonSection() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Column(
          children: [
            Icon(
              Icons.add,
              size: 24,
              color: ColorConstants.mainWhite,
            ),
            SizedBox(height: 5),
            Text(
              "My List",
              style: TextStyle(
                color: ColorConstants.mainWhite,
                fontSize: 14,
              ),
            )
          ],
        ),
        SizedBox(
          width: 42,
        ),
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(6),
            color: ColorConstants.grey,
          ),
          padding: EdgeInsets.symmetric(vertical: 9, horizontal: 20),
          child: Row(
            children: [
              Icon(
                Icons.play_arrow,
                size: 25,
                color: ColorConstants.mainBlack,
              ),
              SizedBox(width: 15),
              Text(
                "Play",
                style: TextStyle(
                  color: ColorConstants.mainBlack,
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              )
            ],
          ),
        ),
        SizedBox(
          width: 42,
        ),
        Column(
          children: [
            Icon(
              Icons.info_outline,
              size: 24,
              color: ColorConstants.mainWhite,
            ),
            SizedBox(height: 5),
            Text(
              "Info",
              style: TextStyle(
                color: ColorConstants.mainWhite,
                fontSize: 14,
              ),
            )
          ],
        ),
      ],
    );
  }

  Widget _buildTopTenSection() {
    return Stack(
      children: [
        Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(
                      "data:image/jpeg;base64,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"))),
          height: 415,
        ),
        Container(
          padding: EdgeInsets.only(left: 10, right: 24, top: 45),
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter,
                  colors: [
                ColorConstants.mainBlack,
                Colors.transparent,
              ])),
          height: 415,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset(ImageConstants.LOGO_N),
                  Text(
                    "Tv Shows",
                    style: TextStyle(
                      color: ColorConstants.mainWhite,
                      fontSize: 17.2,
                    ),
                  ),
                  Text(
                    "Movies",
                    style: TextStyle(
                      color: ColorConstants.mainWhite,
                      fontSize: 17.2,
                    ),
                  ),
                  Text(
                    "My List",
                    style: TextStyle(
                      color: ColorConstants.mainWhite,
                      fontSize: 17.2,
                    ),
                  ),
                ],
              ),
              Text(
                "#2 in Nigeria Today",
                style: TextStyle(
                    color: ColorConstants.mainWhite,
                    fontSize: 14,
                    fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
      ],
    );
  }
}