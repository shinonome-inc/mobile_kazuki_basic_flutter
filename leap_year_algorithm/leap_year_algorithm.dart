import 'dart:io';

void main() {
  print('整数を入力してください。');
  String input = stdin.readLineSync() ?? ''; // 標準入力から文字列を読み込む
  int number = int.parse(input); // 文字列を整数に変換
  var a = number;
  if (a % 4 == 0) {
    if (a % 100 != 0) {
      print('閏年');
    } else {
      if (a % 400 == 0) {
        print('閏年');
      } else {
        print('平年');
      }
    }
  } else {
    print('平年');
  }
}
