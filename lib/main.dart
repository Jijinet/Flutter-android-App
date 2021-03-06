import 'package:flutter/material.dart';
import 'package:flutter_app/pages/counter.page.dart';
import 'package:flutter_app/pages/gallery.page.dart';
import 'package:flutter_app/pages/home.page.dart';
import 'package:flutter_app/pages/meteo.page.dart';
import 'package:flutter_app/pages/users.page.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        "/":(context)=>HomePage(),
        "/counter":(context)=>CounterPage(),
        "/users":(context)=>UsersPage(),
        "/gallery":(context)=>Gallery(),
        "/meteo":(context)=>WeatherForm()
      },
      theme: ThemeData(
        primarySwatch: Colors.deepOrange,
        textTheme: TextTheme(
          bodyText2: TextStyle(fontSize: 30,color: Colors.deepOrange)
        )
      ),
    );
  }
}


  
  
