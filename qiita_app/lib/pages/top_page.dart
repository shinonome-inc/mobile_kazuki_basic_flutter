import 'package:flutter/material.dart';

import '../constants/app_colors.dart';

class TopPage extends StatefulWidget {
  const TopPage({Key? key}) : super(key: key);

  @override
  State<TopPage> createState() => _TopPageState();
}

class _TopPageState extends State<TopPage> {
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
                  image: AssetImage('images/background (1).png'),
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
