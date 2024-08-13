// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_application_netflix_clone/dummy_db.dart';
import 'package:flutter_application_netflix_clone/utils/color_constants.dart';
import 'package:flutter_application_netflix_clone/view/search_screen/widgets/search_screen_card.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:
       ColorConstants.mainBlack,
       body: Column(
        children: [
          TextField(
          decoration: InputDecoration(
            border: InputBorder.none,
            filled: true,
            fillColor: ColorConstants.grey,
            hintText: "Search for a show,movie,genre,etc",
            hintStyle: TextStyle(
              color: ColorConstants.mainWhite,
              fontSize: 15,
            ),
            prefixIcon: Icon(Icons.search,
            color: ColorConstants.mainWhite,),
            suffixIcon: Icon(Icons.mic,
            color:  ColorConstants.mainWhite,)
          ),
        
        ),
        SizedBox(height: 21,),
        Padding(
          padding: EdgeInsets.only(right: 300),
          child: Text(
            "Top Searches",style: TextStyle(
              color: ColorConstants.mainWhite,
              fontSize: 27,fontWeight: FontWeight.bold
            ),
          ),
        ),

        SizedBox(height: 21,),
        Expanded(
          child: ListView.separated(itemBuilder: (context, index) => SearchScreenCard(
            title: DummyDb.searchScreenData[index]['title'],
            url: DummyDb.searchScreenData[index]['url'],
            
            
          ), separatorBuilder:
           (context, index) => SizedBox(height: 3,), itemCount: 10),
        )
        ],
        
       ),
    );
  }
}