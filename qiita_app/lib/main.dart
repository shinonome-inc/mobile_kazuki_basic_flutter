import 'package:flutter/material.dart';

import 'constants/app_colors.dart';

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
        primarySwatch: Colors.green,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              height: 220,
            ),
            Container(
              height: 63,
              child: Text('Qiita Feed App',
                  style: TextStyle(
                    fontSize: 36,
                    color: Colors.black,
                    fontFamily: 'Pacifico',
                  )),
            ),
            Container(
              height: 8,
            ),
            Text(
              '-PlayGround-',
              style: TextStyle(fontSize: 14),
            ),
            Container(
              height: 321,
            ),
            Container(
              height: 50,
              width: 327,
              child: ElevatedButton(
                child: const Text('ログイン'),
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                    shape: const StadiumBorder(),
                    backgroundColor: AppColors.primary,
                    foregroundColor: Colors.white),
              ),
            ),
            Container(
              height: 16,
            ),
            Container(
              height: 50,
              width: 327,
              child: (TextButton(
                onPressed: () {},
                style: TextButton.styleFrom(
                  foregroundColor: Colors.black,
                ),
                child: Text('ログインせずに利用する'),
              )),
            ),
            Container(
              height: 64,
            )
          ],
        ),
      ),
    );
  }
}
