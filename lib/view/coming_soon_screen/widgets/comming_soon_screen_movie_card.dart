import 'package:flutter/material.dart';
import 'package:flutter_application_netflix_clone/utils/color_constants.dart';

class CommingSoonScreenMovieCard extends StatelessWidget {
  const CommingSoonScreenMovieCard({
    super.key, 
    required this.url, 
    required this.des, 
    required this.title});

 final String url;
  final String des;
  final String title;


  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        
        children: [
          Image.network(
            url,
          height: 195,
          width: double.infinity,
          fit: BoxFit.cover,
          ),
          SizedBox(height: 20,),
          Row(
            mainAxisAlignment: MainAxisAlignment.end ,
            children: [
              Column(
                    children: [
                      Icon(
                        size: 24,
                        Icons.notifications,
                        color: ColorConstants.mainWhite,
                        ),
                        SizedBox(height: 7,
                        ),
                        Text("Reminder",
                        style: TextStyle(
                          color: ColorConstants.mainWhite,
                          fontSize: 12,
                          fontWeight: FontWeight.normal
                        ),)
                    ],
              ),
              SizedBox(width: 45,),
              Column(
                children: [
                  Icon(
                    size: 24,
                    Icons.share,
                    color: ColorConstants.mainWhite,
                    ),
                    SizedBox(height: 7,),
                    Text("Share",
                    style: TextStyle(
                      color: ColorConstants.mainWhite,
                      fontSize: 12,
                      fontWeight: FontWeight.normal
                    ),)
                ],
              )
            ],
          ),
          SizedBox(height: 13,),
          Column(
            children: [
              Text("Season 1 coming December 14",
              style: TextStyle(
                color: ColorConstants.mainWhite.withOpacity(.83),
                fontSize: 11.4,
                fontWeight: FontWeight.normal,
              ),
              
              ),
              SizedBox(height: 13.13,),
               Text(
                title,
              style: TextStyle(
                color: ColorConstants.mainWhite,
                fontSize: 18.6,
                fontWeight: FontWeight.w700,
              ),
              ),
              SizedBox(height: 12.86,),
               Text(
                des,
              style: TextStyle(
                color: ColorConstants.mainWhite.withOpacity(.83),
                fontSize: 11.4,
                fontWeight: FontWeight.normal,
              ),
              ),
               Text("Stremy   .  Soapy   .  Slow Burn  .   Suspenseful   .  Teen  .",
              style: TextStyle(
                color: ColorConstants.mainWhite,
                fontSize: 11.4,
                fontWeight: FontWeight.w600
                ,
              ),
              ),
            ],
          )
        ],
      ),
    );
  }
}