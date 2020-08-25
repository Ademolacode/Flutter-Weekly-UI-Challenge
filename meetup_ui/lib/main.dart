import 'package:flutter/material.dart';

import 'package:font_awesome_flutter/font_awesome_flutter.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter UI Challenge Week 2',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
       // primarySwatch: Colors.blue,
      
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MeetUp(),
    );
  }
}

class MeetUp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
   
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          'MeetUp',
          style: TextStyle(color: Colors.pinkAccent),
        ),
      
        leading: IconButton(
            icon: FaIcon(FontAwesomeIcons.arrowLeft,
                color: Colors.pinkAccent[100]),
            onPressed: null),
        actions: <Widget>[
          IconButton(
            icon: FaIcon(FontAwesomeIcons.search, color: Colors.pinkAccent[100]),
            onPressed: null,
          ),
        ],

      ),
      body: SingleChildScrollView(
              child: Stack(
               
          children: <Widget>[
          
                //ThirdPart
             Container(
              height: 800,
              width: double.infinity,
              decoration:  BoxDecoration(
                color: Colors.pink[300],
                
              ),
              child: Column(
                children: [
                  SizedBox(
                    height: 700,
                  ),
                   Text(
                        'Today 9:00 PM',
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.pink[800]),
                      ),
                      Text(
                        'Easy and Gentle Yoga',
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                      Container(
                        child: RaisedButton(
                          color: Colors.pink[100],
                      
                          child:Text('You are going!', style:TextStyle(color:Colors.white),),
                              onPressed: () {} ,
                              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25),),

                        ),
                      ),

                ]
              ),

            ),
        
            
            //Second Part
            Container(
              height: 600,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.pink[200],
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(100),
                ),
              ),
              child: Column(children: [
                SizedBox(
                  height: 450,
                ),
                Text('Today 8:00PM',
                    style: TextStyle(color: Colors.pink, fontSize: 18), ),
                    Text(
                          'Practice French, English and Chinese',
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),),

                              Padding(
                                padding: EdgeInsets.symmetric(vertical: 10),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                       Container(
                    margin: EdgeInsets.symmetric(horizontal: 20),
                 
                    height: 45,
                    width: 50,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(color: Colors.pink[800], width: 2),
                    ),
                                   child: Icon(Icons.check, color: Colors.pink[800],), ),
                          

                                       Container(
                    margin: EdgeInsets.symmetric(horizontal: 20),
                    
                    height: 45,
                    width: 50,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(color: Colors.pink[800], width: 2),
                    ),
                                       
                                    child:Icon(Icons.clear, color: Colors.pink[800],),),

                                  ],
                                ),
                              )
              ]),
            ),

                  //First Part
                Container(
              height: 350,
              width: double.infinity,
              decoration: BoxDecoration(
                  color: Colors.pink[100],
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(100),
                  ),

                  ),
              child: Column(children: [
                SizedBox(
                  height: 200,
                ),
                Text('Today 6:00PM',
                    style: TextStyle(color: Colors.pink, fontSize: 18)),
                Text(
                  'Yoga and Meditation for Beginners',
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.pink),
                ),
                
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[

                      Stack(
                        children: <Widget>[

                         Container(
                           padding: EdgeInsets.only(top: 10.0),
                           
                            margin: EdgeInsets.only(
                              left: 10,
                            ),
                          child:CircleAvatar(
                     
                        radius: 20,
                        backgroundImage: AssetImage('assets/images/img1.jpg',),
                      ),
                      
                          ),
                           Container(
                           padding: EdgeInsets.only(top: 10.0),
                           
                            margin: EdgeInsets.only(
                              left:30,
                            ),
                          child:CircleAvatar(
                     
                        radius: 20,
                        backgroundImage: AssetImage('assets/images/img2.jpg',),
                      ),
                      
                          ),
                           Container(
                           padding: EdgeInsets.only(top: 10.0),
                           
                            margin: EdgeInsets.only(
                              left: 50,
                            ),
                          child:CircleAvatar(
                     
                        radius: 20,
                        backgroundImage: AssetImage('assets/images/img3.jpg',),
                      ),
                      
                          ),
                           Container(
                           padding: EdgeInsets.only(top: 10.0),
                           
                            margin: EdgeInsets.only(
                              left: 70,
                            ),
                          child:CircleAvatar(
                     
                        radius: 20,
                        backgroundImage: AssetImage('assets/images/img4.jpg',),
                      ),
                      
                          ),
                   
                        ],
                      ),
               
                    SizedBox(width: 3,),
                     Text(
                            'Marie and 3 others',
                            style: TextStyle(
                              color: Colors.pinkAccent,
                              fontSize: 16,
                            ),),
                  ],
                )
              ],),
            ),


                     //Top Icons
            
              Container(
                width: double.infinity,
              height: 160,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(110),
                  )),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 20),
                     
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(color: Colors.pinkAccent[100], width: 2),
                      ),
                      child: Icon(Icons.music_note, color: Colors.pinkAccent[100]),
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 20),
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(color: Colors.pinkAccent[100], width: 2),
                      ),
                      child: Icon(
                        Icons.trending_up,
                        color: Colors.pinkAccent[100],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 20),
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(color: Colors.pinkAccent[100], width: 2),
                      ),
                      child: Icon(
                        Icons.favorite_border,
                        color: Colors.pinkAccent[100],
                      ),
                    ),
                  ],
                
            ),
              ),
             
           
          ],
        ),
      ),
  
    );
  }
}
