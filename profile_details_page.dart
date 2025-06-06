import 'package:flutter/material.dart';

class ProDetails extends StatelessWidget{
   final url,name,roll,col,pno,loc;
    const ProDetails(this.url,this.name,this.roll,this.col,this.pno,this.loc);
    Widget build(BuildContext context){
      final sw=MediaQuery.of(context).size.width;
      final sl=MediaQuery.of(context).size.width;
      void showMyDialog(BuildContext context){
         showDialog(
          context:context,
          builder:(BuildContext context){
            return AlertDialog(
              title: Text('Edit'),
              content: Text('Under Construction'),
              actions: [
                ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context);
                    
                  },
                  child: Text("OK"),
                ),
              ],
            );
            
          }
         );
        }
        
       void showMyDialog2(BuildContext context){
         showDialog(
          context:context,
          builder:(BuildContext context){
            return AlertDialog(
              title: Text('Ph.No'),
              content: Text('+91-'+pno),
              actions: [
                ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context);
                    
                  },
                  child: Text("OK"),
                ),
              ],
            );
            
          }
         );
        }
      return Scaffold(
        appBar: AppBar(
          title: Text('Profile Details',style: TextStyle(color:Color(0xFF263238)),),
          backgroundColor: Color.fromARGB(255, 250, 113, 100),
          actions: [
            Icon(Icons.settings),
            SizedBox(width: 20,)
          ],
        ),
        body:Container(

              decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Color(0xFFF83600), Color(0xFFF9D423)],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
            ),
            child:Padding(
          
          padding: EdgeInsets.all(0),
           child:Card(
            
            elevation: 10,
            color: Colors.black,
             child: 
             Stack(
              //alignment:Alignment.center,
              children:[
                Column(
              children:[
                  ClipPath(
                    clipper:CustomClipPath(),
                    child: Container(
                      color:col,
                      height: 150,
                     
                    ),
                    ),
                    

                    //SizedBox(height: 75,),
                    Expanded(
                      child:SingleChildScrollView(
                        scrollDirection: Axis.vertical,
                        child:Container(
                          padding: EdgeInsets.only(left: 50,right: 50),
                          decoration: BoxDecoration(
                            //borderRadius: BorderRadius.only(topLeft: Radius.circular(180),topRight: Radius.circular(180)),
                            //color: Colors.amber
                          ),
                          child:Column(
                              children:[
                                KeyValue(Icon(Icons.man),'Name',name),
                                KeyValue(Icon(Icons.email),'Email',roll+'@aec.edu.in'),
                                KeyValue(Icon(Icons.location_city),'Location',loc),
                                KeyValue(Icon(Icons.phone),'Contact',pno),
                                 KeyValue(Icon(Icons.male),'Gender','Male'),
                                ]
                            )
                          )
                          )
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                colors: [Colors.purple, Colors.deepPurple],
                              ),
                              borderRadius: BorderRadius.circular(12),
                            ),
                            child: ElevatedButton.icon(
                                icon: Icon(Icons.edit),
                                label: Text('Edit'),
                                style: ButtonStyle(
                                    //backgroundColor:MaterialStateProperty.all(Color(0xFFFF6F61)),
                                     backgroundColor: MaterialStateProperty.all(Colors.transparent),
                                     shadowColor: MaterialStateProperty.all(Colors.transparent),
                                    shape: MaterialStateProperty.all(
                                      RoundedRectangleBorder(
                                        borderRadius:BorderRadius.circular(20)
                                      )
                                    ),
                                    padding: MaterialStateProperty.all(
                                    EdgeInsets.all(20),
                                    )
                                 ),
                                 onPressed: () =>showMyDialog(context),
                                 
                            ),
                          ),
                          
                        Container(
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                colors: [Colors.purple, Colors.deepPurple],
                              ),
                              borderRadius: BorderRadius.circular(12),
                            ),
                            child: ElevatedButton.icon(
                                icon: Icon(Icons.phone),
                                label: Text('Contact'),
                                style: ButtonStyle(
                                    //backgroundColor:MaterialStateProperty.all(Color(0xFFFF6F61)),
                                     backgroundColor: MaterialStateProperty.all(Colors.transparent),
                                     shadowColor: MaterialStateProperty.all(Colors.transparent),
                                    shape: MaterialStateProperty.all(
                                      RoundedRectangleBorder(
                                        borderRadius:BorderRadius.circular(20)
                                      )
                                    ),
                                    padding: MaterialStateProperty.all(
                                    EdgeInsets.all(20),
                                    )
                                 ),
                                 onPressed: ()=>showMyDialog2(context),
                            ),
                          ),
                        Container(
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                colors: [Colors.purple, Colors.deepPurple],
                              ),
                              borderRadius: BorderRadius.circular(12),
                            ),
                            child: ElevatedButton.icon(
                                icon: Icon(Icons.arrow_back),
                                label: Text('Back'),
                                style: ButtonStyle(
                                    //backgroundColor:MaterialStateProperty.all(Color(0xFFFF6F61)),
                                     backgroundColor: MaterialStateProperty.all(Colors.transparent),
                                     shadowColor: MaterialStateProperty.all(Colors.transparent),
                                    shape: MaterialStateProperty.all(
                                      RoundedRectangleBorder(
                                        borderRadius:BorderRadius.circular(20)
                                      )
                                    ),
                                    padding: MaterialStateProperty.all(
                                    EdgeInsets.all(20),
                                    )
                                 ),
                                 onPressed: () {
                                  Navigator.pop(context);
                                 },
                            ),
                          )

                      ],
                    )
                ]
                
             ),
             Positioned(
                 
                  top: 50,
                  left: (sw/2)-70,
                  
                  width: 100,height: 100,
                  child: ClipRRect(
                     borderRadius: BorderRadius.circular(50),
                     child:Image.asset(this.url,fit: BoxFit.cover)
                  )
                ),
             ]
           )
           )
        )
        )
        
      );
    }
}
class CustomClipPath extends CustomClipper<Path>{
  Path getClip(Size size){
    //  double w=size.width;
    //  double h=size.height;
      final path = Path();

    // Start from bottom left
    path.moveTo(0, size.height);

    // Curve upward beyond the top using control point outside the visible box
    path.quadraticBezierTo(
      size.width / 2, size.height-100, // Control point ABOVE the container
      size.width, size.height, // End at bottom-right
    );

    // Complete shape by connecting to top-right and top-left
    path.lineTo(size.width, 0);
    path.lineTo(0, 0);

    path.close();
    return path;
  }
  bool shouldReclip(CustomClipper<Path> oldClipper){
    return false;
  }
}
class KeyValue extends StatelessWidget{
  final String title,value;
  final val;
  const KeyValue(this.val,this.title,this.value);
  Widget build(BuildContext context){
    return Card(
        color: Color(0xFF4DB6AC),
        elevation: 6,
        margin: EdgeInsets.symmetric(horizontal: 20,vertical: 10),
        child:Padding(
          padding: EdgeInsets.all(10),
         child: Row(
          children: [
              
              val,
              Expanded(
                child: Container(
                  child: Center(child:Text('$title',style: TextStyle(color: Color(0xFF263238)),),)
                ),
              ),
              Expanded(
               child:
                Container(
                  child: Text('$value'),
                ),
              )
            ],
          ),
         ),
    );
  }
}
