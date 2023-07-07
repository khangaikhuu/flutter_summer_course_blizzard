// манай sprite буюу class
class Sprite {
  String name = 'Sprite';
  int x = 0;
  int y = 0;
  int size = 100;
  int direction = 90;
  bool show = true;
  // constructor
  Sprite(String name){
    this.name = name;
  }

  // string буцаадаг тэгээд name гэдэг Sprite class-ийн property-г
  // буцаадаг getName гэдэг функц бичнэ үү
  String getName(){
    return this.name;
  }

  void say (String name){
    print('Hello My name is $name');
  }

  void move(int x) {
    this.x = x;
    print('I moved ${this.x}');
  }
}

void main(){
  final Dee = Sprite('Dee');
  Dee.say('Yeeye');  // Dee-г өөрийн нэрээр нь хэлүүлэх
  Dee.move(10); // Dee-г x тэнхлэгийн дагуу 10-аар нэмье
  print(Dee.getName());
  final Chick = Sprite('Chick');
  // Chick object-ийг 100гаар move хийх
  Chick.say('Chick');
  Chick.move(100);
  print(Chick.getName());
  final Ruby = Sprite('Ruby');
  // Ruby object-ийг 200-гаар move хийх
  Ruby.say('Hello! My Name is Dee');
  Ruby.move(200);
  print(Ruby.getName());
}
