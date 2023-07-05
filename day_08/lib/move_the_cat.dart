import 'dart:io';

class Sprite {
  int x = 0;
  int y = 0;

  void move(String key) {
    switch (key) {
      case 'w' || 'i':
        y -= 1; // Upward movement
        break;
      case 's' || 'j':
        y += 1; // Downward movement
        break;
      case 'a' || 'k':
        x -= 1; // Leftward movement
        break;
      case 'd' || 'l':
        x += 1; // Rightward movement
        break;
    }
    display(this);
  }

  void display(Sprite sprite) {}

  String get asciiArt => '';
}

class Dog extends Sprite {
  final String _asciiArt = '''
  |\\_|\\
 ( o.o )
  > ^ <
 ''';

  @override
  String get asciiArt => _asciiArt;

  @override
  void display(Sprite sprite) {
    displaySprite(this);
  }
}

class Cat extends Sprite {
  final String _asciiArt = '''
  /\\_/\\
 ( o.o )
  > ^ <
 ''';

  @override
  String get asciiArt => _asciiArt;

  // Display the updated cat position
  @override
  void display(Sprite sprite) {
    displaySprite(this);
  }
}

void displaySprite(Sprite cat) {
  // Clear the console before displaying the ASCII art
  if (Platform.isWindows) {
    // For Windows
    final result = Process.runSync('cls', [], runInShell: true);
    print(result.stdout);
  } else {
    // For other platforms (Linux, macOS)
    print('\x1B[2J\x1B[0;0H');
  }

  // Draw the ASCII art at the cat's position
  final lines = cat.asciiArt.trim().split('\n');
  for (var i = 0; i < lines.length; i++) {
    if (i == cat.y) {
      print(' ' * cat.x + lines[i]);
    } else {
      print(lines[i]);
    }
  }
}

void main() {
  Cat cat = Cat();
  displaySprite(cat);

  Dog dog = Dog();
  displaySprite(dog);

  stdin.lineMode = false;
  stdin.echoMode = false;

  stdin.asBroadcastStream().listen((List<int> data) {
    final key = String.fromCharCodes(data);

    // Handle movement keys
    if (key == 'w' || key == 's' || key == 'a' || key == 'd') {
      cat.move(key);
    }
    if (key == 'i' || key == 'j' || key == 'k' || key == 'l') {
      dog.move(key);
    }
  });
}

