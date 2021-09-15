import 'package:flutter/material.dart';
import 'package:party_app/pages/FadeAnimation.dart';
class HomePage extends StatefulWidget {
 
static final String id  = "HomePage";

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

bool islogin = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/im_party.jpeg"),
            fit: BoxFit.cover
          )
        ),
        child: Container(
          padding: EdgeInsets.all(40),
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              colors: [
                Colors.black.withOpacity(.8),
                Colors.black.withOpacity(.5),
                Colors.black.withOpacity(.3),
              ]
            )
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
                  FadeAnimation(1, Text("Find the best parties near you.",style: TextStyle(color: Colors.yellow,fontSize: 50),),),
                  
                  SizedBox(height: 20,),
                 
                  FadeAnimation(1.5, Text("Let us find you a tutorial for your interest",style: TextStyle(color: Colors.teal[600],fontSize: 35),),),
                  
                  SizedBox(height: 400,),



                  islogin?
                  FadeAnimation(2.0,  Container(
                    width: double.infinity,
                    height: 60,
                    decoration: BoxDecoration(
                      color: Colors.orange[700],
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Center(child: Text("Start",style: TextStyle(color: Colors.white,fontSize: 28),),),
                  ))
                 :
                 FadeAnimation(2.5, Row(
                    children: [
                      Expanded(
                        flex: 1,
                        child: Container(
                          height: 60,
                          decoration: BoxDecoration(
                            color: Colors.red,
                            borderRadius: BorderRadius.circular(30)
                          ),
                          child: Center(child: Text("Google",style: TextStyle(color: Colors.white,fontSize: 28),),),
                        )),
                        SizedBox(width: 20,),
                        Expanded(
                        flex: 1,
                        child: Container(
                          height: 60,
                          decoration: BoxDecoration(
                            color: Colors.blue,
                            borderRadius: BorderRadius.circular(30)
                          ),
                          child: Center(child: Text("Facebook",style: TextStyle(color: Colors.white,fontSize: 28),),),
                        ))
                    ],
                  ))
                  

            ],
          ),
        ),
        
      ),
    );
  }
}