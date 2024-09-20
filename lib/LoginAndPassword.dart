import 'package:flutter/material.dart';

void main(){
  runApp (const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyLoginPage(),
    );
  }
}

class MyLoginPage extends StatefulWidget {
  const MyLoginPage({super.key});

  @override
  State<MyLoginPage> createState() => _MyLoginPageState();
}

class _MyLoginPageState extends State<MyLoginPage> {

  TextEditingController _username = new TextEditingController();
  TextEditingController _password = new TextEditingController();

  void display() {

    String username = _username.text;
    String password = _password.text;
    print('Username: $username');
    print('Password: $password');

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My Login Page"),
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 10,),
            TextField(
              controller: _username,
              decoration: InputDecoration(
                labelText: 'Enter your name',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 20,),
            TextField(
              controller: _password,
              decoration: InputDecoration(
                labelText: 'Enter your password',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 20,),
            ElevatedButton(
                  onPressed: () {
                  ScaffoldMessenger.of(context)
                .showSnackBar(SnackBar(content: Text("Your username is ${_username.text}"
                      " and your password is ${_password.text}")));
                }, child: Text('Display',),
            ),
          ],
        ),
      ),
    );
  }
}
