import 'dart:io';

void main(){
  // эхлээд консол дээр enter your guess гэдэг текстийг бичнэ
  stdout.write('Enter your guess: ');
  // доорх комманд болох stdin.readLineSync() нь гарнаас тоо юмуу үсэг аваад түүнийг input гэдэг хувьсагчид
  // хадгалж байгаа.
  String? input = stdin.readLineSync(); // null safety
  /// одоо хадгалсан input доторх утгыг хэвлээрэй.
  print(input);

  // added new line here
  print('Hello World');
}