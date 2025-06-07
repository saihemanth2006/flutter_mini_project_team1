import 'package:flutter/material.dart';
class ProDetails extends StatefulWidget{
  final url,name,roll,col,pno,loc;
  ProDetails(this.url,this.name,this.roll,this.col,this.pno,this.loc);
  _ProDetailsState createState()=>_ProDetailsState();
}
class _ProDetailsState extends State<ProDetails>{
        double _h = 0,_he=0,_bh=0,_wi=0;
         Color _col=Colors.white;
         @override
         void initState() {
          super.initState();
          Future.delayed(Duration(milliseconds: 300), () {
            setState(() {
              _h=150;
              _he=100;
              _wi=100;
              _bh=50;
              _col=Colors.black;
            });
          }
          );
        }
  
    Widget build(BuildContext context){
      final sw=MediaQuery.of(context).size.width;
     // final sl=MediaQuery.of(context).size.width;
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
              content: Text('+91-'+widget.pno),
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
        body:AnimatedContainer(
              duration: Duration(milliseconds: 900),
              curve: Curves.easeInOut,
              decoration: BoxDecoration(
              //gradient: lg,
                color: _col
            ),
            child:Padding(
          
          padding: EdgeInsets.all(0),
           child:Card(
            shape:RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
              
            ),
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
                    child: AnimatedContainer(
                      duration: Duration(milliseconds: 700),
                      curve: Curves.easeInOut,
                      height: _h,
                      decoration: BoxDecoration(
                        color:widget.col,
                        borderRadius: BorderRadius.only(topLeft: Radius.circular(20),topRight: Radius.circular(20))
                      ),
                    ),
                    ),
                    

                    //SizedBox(height: 75,),
                    Expanded(
                      child:SingleChildScrollView(
                        scrollDirection: Axis.vertical,
                        child:Container(
                          padding: EdgeInsets.only(left: 50,right: 50),
                          
                          child:Column(
                              children:[
                                KeyValue(Icon(Icons.man),'Name',widget.name),
                                KeyValue(Icon(Icons.email),'Email',widget.roll+'@aec.edu.in'),
                                KeyValue(Icon(Icons.location_city),'Location',widget.loc),
                                KeyValue(Icon(Icons.phone),'Contact',widget.pno),
                                 KeyValue(Icon(Icons.male),'Gender','Male'),
                                ]
                            )
                          )
                          )
                    ),
                     AnimatedContainer(
                      duration: Duration(milliseconds: 700),
                      curve: Curves.easeInOut,
                      height: _bh,
                      child:Row(
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
                    ),
                    ),
                   SizedBox(height: 16,)
                ]
                
             ),
             Positioned(
                  top: 50,
                  left: (sw/2)-70,
                  child: AnimatedContainer(
                    width: _wi,height: _he,
                      duration:Duration(seconds: 1),
                      curve:Curves.bounceOut,
                      child:ClipRRect(
                          borderRadius: BorderRadius.circular(50),
                          child:Image.asset(widget.url,fit: BoxFit.cover)
                  )
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
    
      final path = Path();

    
    path.moveTo(0, size.height);

    
    path.quadraticBezierTo(
      size.width / 2, size.height-100, 
      size.width, size.height,
    );

   
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
