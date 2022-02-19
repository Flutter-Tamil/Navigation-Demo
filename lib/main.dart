import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      initialRoute: "/",
      routes: {
        "/": (context) => FirstScreen(),
        "/second": (context) => SecondScreen(),
      },
    ));

class FirstScreen extends StatefulWidget {
  FirstScreen({Key? key}) : super(key: key);

  @override
  State<FirstScreen> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Fist Screen"),
      ),
      body: ElevatedButton(
        child: Text("Go Second Page"),
        onPressed: () {
          Navigator.pushNamed(context, "/second");
        },
      ),
    );
  }
}

class SecondScreen extends StatefulWidget {
  SecondScreen({Key? key}) : super(key: key);

  @override
  State<SecondScreen> createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Second Screen"),
      ),
      body: ElevatedButton(
        child: Text("Go First Page"),
        onPressed: () {
          Navigator.pop(context);
        },
      ),
    );
  }
}
