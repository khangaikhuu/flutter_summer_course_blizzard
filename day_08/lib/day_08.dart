// одоо бид нар add.dart гэдэг файл дотор байгаа функцыг дуудаж оруулж ирье.
import 'package:day_08/add.dart';
import 'dart:io';
import 'dart:math'; // математикийн функцын цуглуулгаас

void main(){
  print('Day - 08');
  // одоо би add.dart гэдэг файл дотор байгаа add гэдэг функцыг ашиглана.
  print(add(4, 5));
  // 5 болон 6 гэдэг тоонуудыг minus гэдэг функцийг ашиглан ялгаврыг нь хэвлэж харуулаарай.
  print(minus(5, 6));
  print(minus(10, 4));
  final myObject = A();
  print(myObject.x);
  print(myObject.y);
  print(myObject.nextInt());
  print(myObject.add(4, 5));
  // Бүгдээрээ 1-ээс 100 хүртэлх тооноос дурын нэг тоо авдаг dart class-ийг бүгдээрээ үзье
  final Random random = Random();
  final int randomNumber = random.nextInt(100) + 1;
  print(randomNumber);
  // exercise 01
  // шинээр 20 хүртэлх тооноос дурын тоог сонгоод түүнийг хэвлэнэ үү. Үүндээ random гэдэг object-ийг ашиглана уу

  // exercise 02
  // class A дотор шинээр minus гэдэг функц тодорхойлоод түүндээ 2 параметр авдаг болгоно уу. Дараа нь тэр 2 параметрийн
  // утгын ялгаврыг буцуудаг болгоно уу. Тэгээд main функц дотроо minus гэдэг функцээ ашиглан тоо оруулан хэвлэнэ үү.

}
class A {
  int x = 0;
  int y = 0;
  int nextInt() {
    return 100;
  }
  int add(int a, int b) {
    return a + b;
  }
}
