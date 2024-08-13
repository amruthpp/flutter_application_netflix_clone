import 'package:flutter/material.dart';
import 'package:flutter_application_netflix_clone/utils/color_constants.dart';

class NewArrivalCard extends StatelessWidget {
  const NewArrivalCard({
    super.key,
     required this.title, 
     required this.date, 
     required this.url,

  });
final String title;
  final String date;
  final String url;




  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 5,horizontal: 12),
      color: ColorConstants.dartkGrey,
              
      child: Row(
        children: [
          Image.network(
            fit: BoxFit.cover,
            url,
          height: 55,width: 113,),
          SizedBox(width: 30,),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("New Arrival",style: TextStyle(color: ColorConstants.mainWhite,
              fontSize: 14,fontWeight: FontWeight.w500
              ),
              ),
               Text(
                title
                ,style: TextStyle(color: ColorConstants.mainWhite,
              fontSize: 14,fontWeight: FontWeight.w500
              ),
              ),
               Text(
                date
                ,style: TextStyle(color: ColorConstants.mainWhite,
              fontSize: 11,fontWeight: FontWeight.w500
              ),
              )
            ],
          )
        ],
      ),
    );
  }
}