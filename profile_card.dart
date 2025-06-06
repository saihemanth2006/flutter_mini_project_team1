import 'package:flutter/material.dart';
import 'profile_details_page.dart';
class ProfileCard extends StatelessWidget{
  final String imageUrl;
  final String name;
  final String rollNo;
  final Color colors;
  const ProfileCard({super.key, required this.imageUrl, required this.name, required this.rollNo, required this.colors});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50),
          color: colors
      ),
      height: 500,
      width: 320,
      child: Stack(
        children: [

          Column(
            children: [
              SizedBox(height: 100,),
              Center(
                child: CircleAvatar(
                  radius: 50,
                  backgroundImage: AssetImage(imageUrl),
                ),
              ),
              SizedBox(height: 20,),
              Text(name, style: TextStyle(color: Colors.black, fontSize: 24, fontWeight: FontWeight.bold),),
              SizedBox(height: 10,),
              Text(rollNo, style: TextStyle(color: Colors.black54, fontSize: 18),),
              SizedBox(height: 70,),
              OutlinedButton(
                style: OutlinedButton.styleFrom(
                    backgroundColor: Colors.black,
                    foregroundColor: Colors.white
                ),
                onPressed: (){
                  Navigator.push(context,MaterialPageRoute(builder: (context)=>ProDetails(imageUrl,name,rollNo,colors)));
                }, child: Text("View Profile"), )
            ],
          ),
          SizedBox(width: 20,),
        ],
      ),
    );
  }
}