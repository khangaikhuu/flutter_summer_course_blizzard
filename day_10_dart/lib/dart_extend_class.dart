// class extension (inheritance)
class Uvgunkhuu {
  int size = 0;
  int length = 0;
  int height = 0;
  Uvgunkhuu({required int size, required int length, required int height}) {
    this.size = size;
    this.length = length;
    this.height = height;
  }
  void showInfo(){
    print("I'm a Uvgunkhuu");
  }
}

class Khangaikhuu extends Uvgunkhuu {
  Khangaikhuu({required super.size, required super.length, required super.height});

  @override
  void showInfo() {
    print("I'm a Khangaikhuu");
  }
}

void main(){
  // шинээр shape гэдэг object үүсгэе
  final uvgunkhuu = Uvgunkhuu(size: 3, length: 10, height: 30);
  uvgunkhuu.showInfo();
  // би яаж дөрвөлжин үүсгэх вэ.
  final rectangle = Khangaikhuu(size: 3, length: 20, height: 40);
  rectangle.showInfo();
}
