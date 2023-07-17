// class
class Sprite {
  // constructor sprite
  Sprite(int x, int y){
    this.x = x;
    this.y = y;
  }
  int x = 0; // class property x
  int y = 0; // class property y
  void makeNoise(){
    print('My Position is ${this.x} and ${this.y}');
  }
}

// named constructor of Shape
class Shape {
  int length = 0;
  int height = 0;
  // одоо length, болон height-ийг нь өгч шинээр object үүсгэдэг Shape constructor үүсгээрэй
  Shape({required int length, required int height}) {
    this.length = length;
    this.height = height;
  }
  // showPosition гэдэг хариу буцаадаггүй харин length, height-ийг нь хэвлэдэг функц бичээрэй
  void showPosition(){
    print('My size is length = ${this.length} and height = ${this.height}');
  }
}

class Animal {
  // named constructor animal
  Animal ({required String name, required String type}) {
    this.name = name;
    this.type = type;
  }
  String name = 'Animal';
  String type = 'Animal';

  // make noise function
  void makeNoise(){
    print('Animal Roaring');
  }

}
void main(){
  final Drum = Sprite(10,10); // sprite гэдэг object
  Drum.makeNoise();
  final shape = Shape(length: 10, height: 20); // шинээр length=10, height = 20; гэдэг shape object үүсгэлээ
  shape.showPosition();
  final animal = Animal(name: 'Tom Cat',type: 'Cat');
  animal.makeNoise();
}
