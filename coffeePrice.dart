import 'package:flutter/material.dart';

void main (){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyCoffeeApp(),
    );
  }
}

class MyCoffeeApp extends StatefulWidget{
  const MyCoffeeApp({super.key});

  @override
  State<MyCoffeeApp> createState() => _MyCoffeeAppState();
}

class _MyCoffeeAppState extends State <MyCoffeeApp>{
  int _counter = 0;

  void increment(){
    setState(() {
      _counter++;
    });
  }

  void decrement(){
    setState(() {
      _counter--;
      if(_counter <= 0){
        _counter = 0;
      }
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Counter Demo"),
      ),
      body: Center(
        child: Column(
          children:[Image.asset('asset/blackcoffee.jpg', width: 300,),
                Row(
                children:
                [SizedBox(width: 50,),
                ElevatedButton(onPressed: increment, child: Text('+')),
               SizedBox(width: 50,),
               Text('$_counter'),
               SizedBox(width: 50),
               ElevatedButton(onPressed: decrement, child: Text('-'))

                ],
        ),
        SizedBox(height: 20,),
        Text('Please Choose your Coffee: ', style: TextStyle(fontSize: 20),),
        ElevatedButton(onPressed: (){
          ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Please pay \$ ${_counter * 5} to proceed')));
        }, child: Text("Order")),
  ]
      )
    ),
    );
  }
}

