import 'package:flutter/material.dart';

void main() {
  
  runApp(const MyApp());

}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      
      home: MyFirstDesign(),
    ); 
  }
}

class MyFirstDesign extends StatelessWidget {
  const MyFirstDesign({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

        appBar: AppBar(
          title: Text("My First Design Flutter Page"),
        ),

      body: Center( //Helps to align all the widgets in the center
        child: Column( // Helps to align all the widgets in y direction
          children: // Helps create multiple objects inside the body
            [Text("Welcome", style: TextStyle(fontSize: 23), ),
            SizedBox(height: 20,),
            Text("I am here", style: TextStyle(fontSize: 55,),),
            SizedBox(height: 30,),
            Icon(Icons.music_note,color: Colors.green,size: 56,),
            Icon(Icons.access_alarm_sharp, color: Colors.blue,size: 70,),
              //Create a button which could be actionable
              ElevatedButton(onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Welcome")));
              },
                  child: Text("Login")),
              SizedBox(height: 30,),
              Container(
                height: 60,
                width: 100,
                color: Colors.amberAccent,

              )
            ],
        ),


      ),

    );

  }
}


