import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ElevatedButton Demo',
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      home: ButtonDemo(),
    );
  }
}

class ButtonDemo extends StatefulWidget {
  const ButtonDemo({super.key});

  @override
  State<ButtonDemo> createState() => _ButtonDemoState();
}

class _ButtonDemoState extends State<ButtonDemo> {
  String message = 'Tap a button to see what happens';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ElevatedButton Examples'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              // Message area — updates when a button is pressed
              Text(
                message,
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 16, color: Colors.black87),
              ),
              SizedBox(height: 30),

              // 1. Basic ElevatedButton
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    message = 'You pressed the Basic Button!';
                  });
                },
                child: Text('Basic Button'),
              ),
              SizedBox(height: 16),

              // 2. Styled ElevatedButton
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    message = 'You pressed the Styled Button!';
                  });
                },
                style: ElevatedButton.styleFrom(
                  foregroundColor: Colors.white,
                  backgroundColor: Colors.deepPurple,
                  padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  elevation: 6,
                ),
                child: Text('Styled Button'),
              ),
              SizedBox(height: 16),

              // 3. Disabled ElevatedButton
              ElevatedButton(
                onPressed: null,
                child: Text('Disabled Button'),
              ),
              SizedBox(height: 16),

              // 4. ElevatedButton with an icon
              ElevatedButton.icon(
                onPressed: () {
                  setState(() {
                    message = 'Download started!';
                  });
                },
                icon: Icon(Icons.download),
                label: Text('Download'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}