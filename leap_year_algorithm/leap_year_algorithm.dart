import 'dart:io';

void main() {
  print('整数を入力してください。');
  String input = stdin.readLineSync() ?? ''; // 標準入力から文字列を読み込む
  int year = int.parse(input); // 文字列を整数に変換
  if (year % 4 == 0) {
    if (year % 100 != 0) {
      print('閏年');
    } else {
      if (year % 400 == 0) {
        print('閏年');
      } else {
        print('平年');
      }
    }
  } else {
    print('平年');
  }
}
