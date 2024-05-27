import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  MyHomePageState createState() => MyHomePageState();
}

class MyHomePageState extends State<MyHomePage> {
  String displayText = "Go";

  Future<String> totch(String x) async {
    await Future.delayed(const Duration(seconds: 2));
    return x * 3;
  }

  void updateText() async {
    String newText = await totch(displayText);
    setState(() {
      displayText = newText;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Go Screen'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              displayText,
              style: const TextStyle(fontSize: 24),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: updateText,
              child: const Text(
                'Press Me',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
