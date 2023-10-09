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
  int cHand = -1;
  int pHand = -1;

  void generateChand() {
    setState(() {
      cHand = random.nextInt(3);
    });
  }

  String? cResult(int cHand) {
    if (cHand == 0) {
      return "グー";
    } else if (cHand == 1) {
      return "チョキ";
    } else if (cHand == 2) {
      return "パー";
    }
    return "";
  }

  String? result() {
    if (pHand == cHand && pHand != -1 && cHand != -1) {
      return "あいこ";
    } else if (pHand == 0 && cHand == 1 ||
        pHand == 1 && cHand == 2 ||
        pHand == 2 && cHand == 0) {
      return "勝ち";
    } else if (pHand == 0 && cHand == 2 ||
        pHand == 1 && cHand == 0 ||
        pHand == 2 && cHand == 1) {
      return "負け";
    }
    return "";
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        const Center(
          child: Text(
            '好きな手を選択してください',
          ),
        ),
        Text(cResult(cHand).toString()),
        Text(result().toString()),
      ]),
      floatingActionButton: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FloatingActionButton(
              backgroundColor: Colors.green,
              onPressed: () {
                generateChand();
                result();
                pHand = 0;

                if (cHand == 0) {
                  debugPrint('グー');
                }
                if (cHand == 1) {
                  debugPrint('チョキ');
                }
                if (cHand == 2) {
                  debugPrint('パー');
                }
                Future.delayed(const Duration(seconds: 3), () {
                  setState(() {
                    cHand = -1;
                    pHand = -1;
                  });
                });
              },
              child: const Text('グー'),
            ),
            FloatingActionButton(
              backgroundColor: Colors.green,
              onPressed: () {
                generateChand();
                result();
                pHand = 1;
                if (cHand == 0) {
                  debugPrint('グー');
                }
                if (cHand == 1) {
                  debugPrint('チョキ');
                }
                if (cHand == 2) {
                  debugPrint('パー');
                }
                Future.delayed(const Duration(seconds: 3), () {
                  setState(() {
                    cHand = -1;
                    pHand = -1;
                  });
                });
              },
              child: const Text('チョキ'),
            ),
            FloatingActionButton(
              backgroundColor: Colors.green,
              onPressed: () {
                generateChand();
                result();
                pHand = 2;
                if (cHand == 0) {
                  debugPrint('グー');
                }
                if (cHand == 1) {
                  debugPrint('チョキ');
                }
                if (cHand == 2) {
                  debugPrint('パー');
                }
                Future.delayed(const Duration(seconds: 3), () {
                  setState(() {
                    cHand = -1;
                    pHand = -1;
                  });
                });
              },
              child: const Text('パー'),
            ),
          ],
        ),
      ),
    );
  }
}
