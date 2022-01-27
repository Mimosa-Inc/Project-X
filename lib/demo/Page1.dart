


// ignore_for_file: file_names

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';






class Page1 extends StatefulWidget {


  @override
  _Page1State createState() => _Page1State();
}

class _Page1State extends State<Page1> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
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
              child: SingleChildScrollView(
                  child:Padding(
                    padding: const EdgeInsets.only(top: 40),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Image.asset("assets/chicken2.png"),
                        Padding(
                          padding: const EdgeInsets.only(top: 30,left: 20),
                          child: Text("Chicken XYZ",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25),),

                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 6,left: 20),
                          child: Text("Made with chilli,pepper,chicken etc  blah blah bread crumbs connor ",
                            style: TextStyle(fontWeight: FontWeight.w200,fontSize: 20),),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 90,left: 20),
                          child: Text("Total Price ",style: TextStyle(fontSize: 20),),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 5,left: 20),
                          child: Text("Rs.250 ",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                        ),
                      ],
                    ),
                  )

    )
    ),
            Positioned(
              bottom: 10,
                right: 10,
                child:Column(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(30)),
                      ),

                      height: MediaQuery.of(context).size.height*0.08,
                      child: Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)
                        ),
                        color: Colors.black,
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 20,right: 10),
                              child: Text("Add to cart",style: GoogleFonts.aBeeZee(color: Colors.white,fontSize: 16),),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 5,right: 10),
                              child: Icon(Icons.add_circle,color: Colors.white,size: 35,),
                            )
                          ],

                        ),
                      ),
                    )
                  ],
                ) ),
            Positioned(
              top: MediaQuery.of(context).size.height*0.04,
                left:    MediaQuery.of(context).size.height*0.02,
                child:InkWell(
                    child: Icon(Icons.arrow_back,size: 30,),
                  onTap: () {
                      Navigator.pushReplacementNamed(context, "/");
                  },
                ),
            ),
    ]
    )
    )
    );
  }
}
