void main() {
  var d = Dog('Labrador', 'Black');
  print(d.color);
}

class Animal {
  String? color;

  Animal(String color) {
    this.color = color;
    print('Animal Class Constructor');
  }

  void eat() {
    print('Animal eat');
  }
}

class Dog extends Animal {
  String? breed;

  Dog(this.breed, String color) : super(color) {
    print('Dog Class Constructor');
  }

  @override
  void eat() {
    print('Dog eat!!');
  }

  void bark() {
    print('wurff wurf!!!');
  }
}
