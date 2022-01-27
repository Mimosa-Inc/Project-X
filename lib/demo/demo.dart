
//Rakshit now go full down or ctrl +f and search for onLongpress or line  208
// So now bro see i have put it in a map and i have declared that widget in the class on the top on line 31
//go to line 75 thats about the widget so somehow i have to get it inside the map so that we can use the lists
//accordingly so try it else ill ask around da 
//


// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'dart:math';

import 'package:flutter/material.dart';
import 'package:glassmorphism/glassmorphism.dart';
import 'package:blurrycontainer/blurrycontainer.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project_x/demo/constants.dart';






class demo1 extends StatefulWidget {


  @override
  _demo1State createState() => _demo1State();
}

class _demo1State extends State<demo1> {

  List <food>foodie =[

    food(
        "download.png",
        "Chicken xyz",
        "Spicy with garlic",
        "Rs.250",
        "chicken,garlic,spicy peppers ,salt"

    ),
    food(
        "chicken2.png",
        "weird dish",
        "Spicy ",
        "Rs.100",
        "chicken,garlic,spicy peppers ,salt"

    ),

    food(
        "download.png",
        "Chicken xyz",
        "Spicy with garlic",
        "Rs.250",
        "chicken,garlic,spicy peppers ,salt"

    ),
    food(
        "download.png",
        "momos",
        "Spicy ",
        "Rs.100",
        "chicken,garlic,spicy peppers ,salt"

    ),




  ];



  showMessagd(String pic,BuildContext context,){

    showMenu(context: context, position: RelativeRect.fromLTRB(30, 150, 29, 0), items: [
      PopupMenuItem(child:
      Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          ClipRRect(
            // borderRadius: BorderRadius.circular(70),
            child: Container(
              height: MediaQuery.of(context).size.height*0.4,
              width: MediaQuery.of(context).size.width*0.5,
              child: Card(
                elevation: 20,
                child:Image.asset(pic),


              ),
            ),
          ),
          // Text(Full)


        ],
      ),
      )
    ]);
  }
  bool _showPreview = false;
  String _image = "assets/download.png";

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Scaffold(
      drawer:Drawer(
        child:
        ListView(children: [
           AppBar(
            leading: Icon(Icons.import_contacts),
          ),


        ],

        ),

      ),


      // appBar: AppBar(
      //   leading: Icon(Icons.import_contacts),
      // ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height*1.2,
        child: Stack(
          children: [
            // Image.asset(
            //   "assets/yee.jpg",
            //   fit: BoxFit.cover,
            //   height: double.infinity,
            //   width: double.infinity,
            //   scale: 1,
            // ),
            SafeArea(
              child: Center(
                child: SingleChildScrollView(
                  child: Container(
                      // width: MediaQuery.of(context).size.width,
                      // height: MediaQuery.of(context).size.height*1.2,

                      alignment: Alignment.bottomCenter,


                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(top: 110,left: 20),
                              child: Text(
                                "Delicious Food",
                                style: GoogleFonts.aBeeZee(fontWeight: FontWeight.bold,fontSize: 30),)),

                          Padding(
                            padding: const EdgeInsets.only(left: 20),
                            child: Text(
                              "We make fresh and healthy food",
                              style: TextStyle(fontWeight: FontWeight.w100,fontSize: 20),),
                          ),
                          Column(
                            children: [
                              Column(
                                children: foodie.map((e) =>  Container(

                                  height: screenSize.height*0.30,
                                  width: screenSize.width*0.80,


                                  child: Padding(
                                    padding: EdgeInsets.only(left: 10,top: 20),
                                    child: GestureDetector(
                                      child: Card(
                                        color: Colors.white.withOpacity(0.5),


                                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                                        elevation: 20,
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.stretch,
                                          children: [
                                            Image.asset(
                                              "assets/${e.img}",height: 120,width: 120,),
                                            Padding(
                                              padding: const EdgeInsets.only(top: 10,left: 20),
                                              child: Text("${e.Dishname}",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(top: 10,left: 20),
                                              child: Text(
                                                "${e.Ingri}",style: TextStyle(fontWeight: FontWeight.w100,fontSize: 16),),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(top: 10,left: 20),
                                              child: Text(
                                                "${e.Price}",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),),
                                            )
                                          ],


                                        ),
                                      ),


                                      onLongPress: () => showMessagd("assets/${e.img}", context,),



                                      onLongPressEnd: (details) {
                                        setState(() {
                                          _showPreview = false;
                                        });
                                      },
                                      onTap: () {
                                        if ( e.Dishname== "Chicken xyz"){
                                          Navigator.pushReplacementNamed(context, "/page1");
                                        }
                                      },
                                    ),
                                  ),
                                ),).toList(),



                              ),

                            ],
                          )
                  ]
                         ),


                  )
                ),
              ),
            ),
            Positioned(
                bottom:screenSize.height*0.03,
                child: Padding(
                  padding: const EdgeInsets.only(left: 35),
                  child: Container(

                    // width: MediaQuery.of(context).size.width*0.6,
                    height: MediaQuery.of(context).size.height*0.08,
                    child: Card(
                      shape: RoundedRectangleBorder(
                       borderRadius: BorderRadius.circular(20)
                        ),

                        color: Colors.black,
                        child:Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 20),
                              child: Icon(Icons.house_outlined,color: Colors.white,size: 40,),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 40),
                              child: Icon(Icons.account_balance_wallet_outlined,color: Colors.white,size: 40),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 40),
                              child: Icon(Icons.message_outlined,color: Colors.white,size: 40),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 40,right: 20),
                              child: Icon(Icons.person_outlined,color: Colors.white,size: 40,),
                            ),
                          ],
                        ),


                    )
                  ),
                ),

            ),

          ],
        ),
      ),
    );



        // child: Text("yeet")


  }
}