void main() {
  var a = Animal();
  a.color = 'White';
  a.eat();

  var d = Dog();
  d.color = 'Brown';
  d.breed = 'Labrador';
  d.eat();
  d.bark();
}

class Animal {
  String? color;

  void eat() {
    print('Animal eat');
  }
}

class Dog extends Animal {
  String? breed;

  void bark() {
    print('wurff wurf!!!');
  }
}
