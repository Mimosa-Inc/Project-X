
//GO to demo file @Rakshit





import 'package:flutter/material.dart';
import 'package:project_x/demo/Page1.dart';
import 'package:project_x/demo/demo.dart';

void main() {
  runApp(ProjectX());
}

class ProjectX extends StatelessWidget {

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      routes: {

        '/':(context) => demo1(),
        '/page1':(context)=>Page1(),



      },
      initialRoute: '/',

    );

  }
}


