import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter　Demo',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: const MyHomePage(title: '判定所'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String output = "";
  int year = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(output),
          const Text('西暦を入力してください'),
          TextField(
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
              ),
              onSubmitted: (text) {
                setState(() {
                  double.tryParse(text) != null;
                  if (double.tryParse(text) == null) {
                    output = 'error';
                  } else {
                    year = int.parse(text);
                    output = kekka(year);
                  }
                });
              }),
        ],
      ),
    );
  }

  String kekka(int year) {
    if (year % 4 == 0) {
      if (year % 100 == 0) {
        if (year % 400 == 0) {
          return ('閏年');
        } else {
          return ('平年');
        }
      } else {
        return ('閏年');
      }
    } else {
      return ('平年');
    }
  }
}
