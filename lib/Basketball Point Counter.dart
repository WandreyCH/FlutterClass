import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyBasksetAPp(),
    );
  }
}

class MyBasksetAPp extends StatefulWidget {
  const MyBasksetAPp({super.key});

  @override
  State<MyBasksetAPp> createState() => _MyBasksetAPpState();
}

class _MyBasksetAPpState extends State<MyBasksetAPp> {
  int _counterA = 0;
  int _counterB = 0;

  void incrementA1() {
    setState(() {
      _counterA++;
    });
  }

  void incrementA2() {
    setState(() {
      _counterA = _counterA + 2;
    });
  }

  void incrementA3() {
    setState(() {
      _counterA = _counterA + 3;
    });
  }


  void incrementB1() {
    setState(() {
      _counterB++;
    });
  }

  void incrementB2() {
    setState(() {
      _counterB = _counterB + 2;
    });
  }

  void incrementB3() {
    setState(() {
      _counterB = _counterB + 3;
    });
  }

  void reset()
  {

    setState(() {
      _counterA = _counterB = 0;
    });

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BasketBall APP'),
      ),
      body: Column( // this col is for entire app
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Row( // this row is used to build two cols
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SizedBox(height: 500,
                child: Column( // this is used to design for teamA
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text('Team A ', style: TextStyle(fontSize: 35),),
                    Text(
                        '$_counterA'
                    ),
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          padding: EdgeInsets.all(8),
                          backgroundColor: Colors.orange,
                          maximumSize: Size(150, 50),
                        ),
                        onPressed: incrementA1,
                        child: Text(' ADD 1 point',
                          style: TextStyle(fontSize: 18, color: Colors.black),)),
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          padding: EdgeInsets.all(8),
                          backgroundColor: Colors.orange,
                          maximumSize: Size(150, 50),
                        ),
                        onPressed: incrementA2,
                        child: Text(' ADD 2 point',
                          style: TextStyle(fontSize: 18, color: Colors.black),)),
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          padding: EdgeInsets.all(8),
                          backgroundColor: Colors.orange,
                          maximumSize: Size(150, 50),
                        ),
                        onPressed: incrementA3,
                        child: Text(' ADD 3 point',
                          style: TextStyle(fontSize: 18, color: Colors.black),
                        )
                    ),

                  ],
                ),
              ),
              SizedBox(
                height: 500,
                child: VerticalDivider(
                  indent: 50,
                  endIndent: 50,
                  color: Colors.grey,
                  thickness: 1,
                ),
              ),
              SizedBox(height: 500,
                child: Column( // this is used to design for teamA
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text('Team B ', style: TextStyle(fontSize: 35),),
                    Text(
                        '$_counterB'
                    ),
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          padding: EdgeInsets.all(8),
                          backgroundColor: Colors.orange,
                          maximumSize: Size(150, 50),
                        ),
                        onPressed: incrementB1,
                        child: Text(' ADD 1 point',
                          style: TextStyle(fontSize: 18, color: Colors.black),)),
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          padding: EdgeInsets.all(8),
                          backgroundColor: Colors.orange,
                          maximumSize: Size(150, 50),
                        ),
                        onPressed: incrementB2,
                        child: Text(' ADD 2 point',
                          style: TextStyle(fontSize: 18, color: Colors.black),)),
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          padding: EdgeInsets.all(8),
                          backgroundColor: Colors.orange,
                          maximumSize: Size(150, 50),
                        ),
                        onPressed: incrementB3,
                        child: Text(' ADD 3 point',
                          style: TextStyle(fontSize: 18, color: Colors.black),
                        )
                    ),

                  ],
                ),
              ),

            ],
          ),
          SizedBox(
            height: 20,
          ),
          ElevatedButton(
              onPressed: reset,
              child: Text('Reset')),
          SizedBox(
            height: 20,
          ),
          ElevatedButton(
              onPressed: () {
                if(_counterA > _counterB) {
                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('A Won')));
                } else if (_counterA < _counterB) {
                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('B Won')));
                } else {
                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Match Draw')));
                }
              },
              child: Text("Show Result"))
        ],
      ),
    );
  }
}