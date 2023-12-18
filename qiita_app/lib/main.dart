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
        child: Stack(
          alignment: Alignment.center,
          children: [
            Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('images/スクリーンショット 2023-12-19 012628.png'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                color: Colors.black.withOpacity(0.2),
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  height: 220,
                ),
                Container(
                  height: 63,
                  child: const Text('Qiita Feed App',
                      style: TextStyle(
                        fontSize: 36,
                        color: Colors.white,
                        fontFamily: 'Pacifico',
                      )),
                ),
                Container(
                  height: 8,
                ),
                const SizedBox(
                  width: 95,
                  height: 20,
                  child: Text(
                    '-PlayGround-',
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.white,
                    ),
                  ),
                ),
                Container(
                  height: 321,
                ),
                Container(
                  height: 50,
                  width: 327,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                        shape: const StadiumBorder(),
                        backgroundColor: AppColors.primary,
                        foregroundColor: const Color(0xFFF9FCFF)),
                    child: const Text('ログイン'),
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
                      foregroundColor: Colors.white,
                    ),
                    child: const Text('ログインせずに利用する'),
                  )),
                ),
                Container(
                  height: 64,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
