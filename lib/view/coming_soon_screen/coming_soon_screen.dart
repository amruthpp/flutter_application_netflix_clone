import 'package:flutter/material.dart';
import 'package:flutter_application_netflix_clone/dummy_db.dart';
import 'package:flutter_application_netflix_clone/utils/color_constants.dart';
import 'package:flutter_application_netflix_clone/view/coming_soon_screen/widgets/comming_soon_screen_movie_card.dart';
import 'package:flutter_application_netflix_clone/view/coming_soon_screen/widgets/new_arrival_card.dart';

class ComingSoonScreen extends StatelessWidget {
  const ComingSoonScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstants.mainBlack,
      appBar: AppBar(
        titleSpacing: 0,
        leadingWidth: 60,
        backgroundColor: ColorConstants.mainBlack,
       leading: Padding(
         padding: const EdgeInsets.all(12.0),
         child: CircleAvatar(
          backgroundColor: ColorConstants.red,
          radius: 8,
          child: Icon(Icons.notifications,
          color: ColorConstants.mainWhite,),
         ),
       ),
       title: Text("Notifications",
       style: TextStyle(
        color: ColorConstants.mainWhite,
        fontWeight: FontWeight.bold,
        fontSize: 17
       ),
       ),
        
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Column(
             
              children: List.generate(
                 DummyDb.newArrivalList.length, 
              
              (index) => NewArrivalCard(
                title: DummyDb.newArrivalList[index]["title"],
                  url: DummyDb.newArrivalList[index]["url"],
                  date: DummyDb.newArrivalList[index]["date"],
              ),
              
              ),
            ),
            ListView.separated(
                padding: EdgeInsets.symmetric(vertical: 25),
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) => CommingSoonScreenMovieCard(
                      title: DummyDb.commingSoonMovieList[index]["title"],
                      url: DummyDb.commingSoonMovieList[index]["url"],
                      des: DummyDb.commingSoonMovieList[index]["description"],
                    ),
                separatorBuilder: (context, index) => SizedBox(height: 17),
                itemCount: DummyDb.commingSoonMovieList.length)
          ],
        ),
      ),
          
          
        );
      
    
  }
}

