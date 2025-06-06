import 'package:flutter/material.dart';

class ProDetails extends StatelessWidget{
   final url,name,roll,col;
    const ProDetails(this.url,this.name,this.roll,this.col);
    Widget build(BuildContext context){
      final sw=MediaQuery.of(context).size.width;
      final sl=MediaQuery.of(context).size.width;
      
      return Scaffold(
        
        appBar: AppBar(
          title: Text('Profile Details',style: TextStyle(color:Color(0xFF263238)),),
          backgroundColor: Color.fromARGB(255, 250, 113, 100),
        ),
        body:Padding(
          
          padding: EdgeInsets.all(0),
           child:Card(
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
                          padding: EdgeInsets.only(left: 30,right: 30),
                          decoration: BoxDecoration(
                            //borderRadius: BorderRadius.only(topLeft: Radius.circular(180),topRight: Radius.circular(180)),
                            //color: Colors.amber
                          ),
                          child:Column(
                              children:[
                                KeyValue('name',name),
                                KeyValue('Email',roll+'@aec.edu.in'),
                                KeyValue('Location','Tuni'),
                                KeyValue('Contact','8555049768'),
                                KeyValue('gender','Male'),
                                ]
                            )
                          )
                          )
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        ElevatedButton(
                          style: ButtonStyle(
                            backgroundColor:MaterialStateProperty.all(Color(0xFFFF6F61)),
                              shape: MaterialStateProperty.all(
                                RoundedRectangleBorder(
                                  borderRadius:BorderRadius.circular(20)
                                )
                              ),
                              padding: MaterialStateProperty.all(
                              EdgeInsets.all(25),
                              )
                          ),
                          onPressed: (){
                          },
                          child: Center(
                            child:Text('Edit')
                          ),
                        ),
                        OutlinedButton(
                          style: ButtonStyle(
                              backgroundColor:MaterialStateProperty.all(Color(0xFFFF6F61)),
                              shape: MaterialStateProperty.all(
                                RoundedRectangleBorder(
                                  borderRadius:BorderRadius.circular(20)
                                )
                              ),
                              padding: MaterialStateProperty.all(
                              EdgeInsets.all(20),
                              )
                          ),
                          onPressed: (){
                          },
                          child: Center(
                            child: Text('Contact'),
                          ),
                        ),
                        OutlinedButton(
                          style: ButtonStyle(
                             backgroundColor:MaterialStateProperty.all(Color(0xFFFF6F61)),
                              shape: MaterialStateProperty.all(
                                RoundedRectangleBorder(
                                  borderRadius:BorderRadius.circular(20)
                                )
                              ),
                              padding: MaterialStateProperty.all(
                              EdgeInsets.all(25),
                              ),
                             
                          ),
                          onPressed: (){
                          },
                          child: Center(
                            child: Text('Back'),
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
  const KeyValue(this.title,this.value);
  Widget build(BuildContext context){
    return Card(
        color: Color(0xFF4DB6AC),
        elevation: 6,
        margin: EdgeInsets.symmetric(horizontal: 20,vertical: 10),
        child:Padding(
          padding: EdgeInsets.all(10),
         child: Row(
          children: [
              Expanded(
                child: Container(
                  child: Text('$title',style: TextStyle(color: Color(0xFF263238)),),
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