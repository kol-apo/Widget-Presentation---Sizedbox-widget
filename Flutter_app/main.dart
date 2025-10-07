import 'package:flutter/material.dart';

void main() => runApp(const SizedBoxDemoApp());

class SizedBoxDemoApp extends StatelessWidget {
  const SizedBoxDemoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'SizedBox Demo',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('SizedBox Demo'),
          backgroundColor: Colors.blue,
        ),
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'SizedBox can add vertical and horizontal spacing ',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 20), // vertical space

              // Row with horizontal spacing
              Row(
                children: [
                  Container(color: Colors.blue, width: 50, height: 50),
                  const SizedBox(width: 30), // horizontal space
                  Container(color: Colors.red, width: 50, height: 50),
                ],
              ),

              const SizedBox(height: 30),

              const Text(
                'SizedBox can as well fix widget size',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 10),

              SizedBox(
                width: 150,
                height: 100,
                child: Container(
                  color: Colors.green,
                  child: const Center(
                    child: Text(
                      'Fixed Size',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
