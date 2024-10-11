import 'package:flutter/material.dart';

class CounterPage extends StatefulWidget {
  const CounterPage({super.key});

  @override
  State<CounterPage> createState() => _CounterPageState();
}

class _CounterPageState extends State<CounterPage> {
  // Variable
  int _counter = 0;

  // Method
  void _incrementCounter() {
    // Rebuilds the widget
    setState(() {
      _counter++;
    });
  }

  // UI

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Message
            Text("You pushed the button this many times"),
            Text(
              _counter.toString(),
              style: TextStyle(fontSize: 40,)
            ),

            // Button
            ElevatedButton(
              onPressed: _incrementCounter, 
              child: Text("Increment"),
            )
          ]
        )
      )
    );
  }
}
