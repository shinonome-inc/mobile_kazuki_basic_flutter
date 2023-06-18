import 'dart:io';
import 'dart:math' as math;

void main() {
  print('「グー（＝０）」「チョキ（＝１）」「パー（＝２）」の中から好きな手を選んでください');
  String input = stdin.readLineSync() ?? '';
  int phand = int.parse(input);
  var random = math.Random();
  int chand = random.nextInt(2);
  if (chand == 0) {
    print('グー');
  }
  if (chand == 1) {
    print('チョキ');
  }
  if (chand == 2) {
    print('パー');
  }
  if (phand == chand) {
    print('draw');
  } else if (phand == 0 && chand == 1) {
    print('win');
  } else if (phand == 0 && chand == 2) {
    print('lose');
  } else if (phand == 1 && chand == 0) {
    print('lose');
  } else if (phand == 1 && chand == 2) {
    print('win');
  } else if (phand == 2 && chand == 0) {
    print('win');
  } else if (phand == 2 && chand == 1) {
    print('lose');
  }
}
