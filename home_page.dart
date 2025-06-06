import 'package:flutter/material.dart';
import 'profile_card.dart';
//welcome page
class HomeScreen extends StatelessWidget{
  const HomeScreen({super.key});
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     backgroundColor: Colors.black,
      //appBar
      appBar: AppBar(
        backgroundColor: Colors.black,
        foregroundColor: Colors.white,
        title: Text("Hello,  Team👋", style: TextStyle(color: Colors.white, fontSize: 24),),
        actions: [
          SizedBox(width: 12,),
          Icon(Icons.search, color: Colors.white,),
          SizedBox(width: 12,),
        ],
      ),

     //body starts
     body: SingleChildScrollView(
       
       child:Column(
       
       children: [
         //text
         //welcome message
         Padding(
           padding: const EdgeInsets.all(20.0),
           child: Text("Welcome to Team Flutter Pirates! 🏴‍☠️", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 50),),
         ),

         //profile containers
         SingleChildScrollView(
           scrollDirection: Axis.horizontal,
           child: Row( mainAxisAlignment: MainAxisAlignment.spaceEvenly,
             children: [

               //aravind profile container
               SizedBox(width: 20,),
               ProfileCard(imageUrl: 'assets/aravind.jpeg', name: 'P. D. S. Aravind Kumar', rollNo: '23MH1A1252', colors: Colors.amber,pno:'2893573423',loc:'Surampalem'),

               //Hemanth 1 profile container
               SizedBox(width: 20,),
               ProfileCard(imageUrl: 'assets/me.jpg', name: 'M. V. S. Hemanth', rollNo: '23A91A1235', colors: Colors.blue.shade300,pno:'9845711344',loc:'Tunu'),

                //nanada profile container
               SizedBox(width: 20,),
               ProfileCard(imageUrl: 'assets/nanda.jpg', name: 'T. D. Nanda Kishore', rollNo: '23A91A12C5', colors: Colors.blueGrey,pno:'8457214528',loc:'Kakinada'),
               SizedBox(width: 20,),

               //shalem profile container
               ProfileCard(imageUrl: 'assets/syam.jpg', name: 'A. Shalem', rollNo: '23MH1A42D3', colors: Colors.greenAccent.shade200,pno:'9457384648',loc:'Rajamhundry'),

                //hemanth 2 conatiner
               SizedBox(width: 20,),
               ProfileCard(imageUrl: 'assets/hemanth.jpg', name: 'N. Hemanth', rollNo: '23A91A12A6', colors: Colors.deepOrange.shade300,pno:'9124738344',loc:'Srikakulam'),
               SizedBox(width: 20,),

             ],
           ),
         )
       ],
       )
     ),
   );
  }
}
