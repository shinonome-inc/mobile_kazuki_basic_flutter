import 'dart:math' as math;

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'じゃんけん'),
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
  var random = math.Random();
  int c_hand = -1;
  int p_hand = -1;

  void genarateChand() {
    setState(() {
      c_hand = random.nextInt(3);
    });
  }

  String? c_result(int cHand) {
    if (cHand == 0) {
      return "グー";
    } else if (cHand == 1) {
      return "チョキ";
    } else if (cHand == 2) {
      return "パー";
    }
    return null;
  }

  String? result() {
    if (p_hand == c_hand) {
      return "あいこ";
    } else if (p_hand == 0 && c_hand == 1 ||
        p_hand == 1 && c_hand == 2 ||
        p_hand == 2 && c_hand == 0) {
      return "勝ち";
    } else if (p_hand == 0 && c_hand == 2 ||
        p_hand == 1 && c_hand == 0 ||
        p_hand == 2 && c_hand == 1) {
      return "負け";
    }

    return null;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        Center(
          child: Text(
            '好きな手を選択してください',
          ),
        ),
        Text(c_result(c_hand).toString()),
        Text(result().toString()),
      ]),
      floatingActionButton: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FloatingActionButton(
              backgroundColor: Colors.green,
              onPressed: () {
                genarateChand();
                result();
                p_hand = 0;

                if (c_hand == 0) {
                  print('グー');
                }
                if (c_hand == 1) {
                  print('チョキ');
                }
                if (c_hand == 2) {
                  print('パー');
                }
              },
              child: const Text('グー'),
            ),
            FloatingActionButton(
              backgroundColor: Colors.green,
              onPressed: () {
                genarateChand();
                result();
                p_hand = 1;
                if (c_hand == 0) {
                  print('グー');
                }
                if (c_hand == 1) {
                  print('チョキ');
                }
                if (c_hand == 2) {
                  print('パー');
                }
              },
              child: const Text('チョキ'),
            ),
            FloatingActionButton(
              backgroundColor: Colors.green,
              onPressed: () {
                genarateChand();
                result();
                p_hand = 2;
                if (c_hand == 0) {
                  print('グー');
                }
                if (c_hand == 1) {
                  print('チョキ');
                }
                if (c_hand == 2) {
                  print('パー');
                }
              },
              child: const Text('パー'),
            ),
          ],
        ),
      ),
    );
  }
}
