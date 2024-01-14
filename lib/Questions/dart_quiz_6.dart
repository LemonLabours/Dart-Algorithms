// ignore_for_file: avoid_print, unused_local_variable, unnecessary_getters_setters

//1- Write a dart program to create a class Laptop with properties [id, name, ram] and create 3 objects of it and print all details.
class Laptop {
  int id;
  String name;
  String ram;

  Laptop(this.id, this.name, this.ram);

  void display() {
    print("id: $id, name: $name, ram: $ram");
  }
}

/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//2-Write a dart program to create a class House with properties [id, name, prize]. Create a constructor of it and create 3 objects of it. Add them to the list and print all details.
class House {
  int id;
  String name;
  int prize;

  House(this.id, this.name, this.prize) {
    print("id: $id, name: $name, prize: $prize");
  }
}

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//3-Write a dart program to create an enum class for gender [male, female, others] and print all values.
enum Gender { male, female }

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//4-Write a dart program to create a class Animal with properties [id, name, color]. Create another class called Cat and extends it from Animal. Add new properties sound in String. Create an object of a Cat and print all details.
class Animal {
  int id;
  String name;
  String color;

  Animal(this.id, this.name, this.color);
}

class Cat extends Animal {
  String sound;

  Cat(this.sound, id, name, color) : super(id, name, color) {
    print("id: $id, name: $name, color: $color , sound: $sound");
  }
}

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//4-Write a dart program to create a class Camera with private properties [id, brand, color, prize]. Create a getter and setter to get and set values. Also, create 3 objects of it and print all details.

class Camera {
  int _id;
  String _brand;
  String _color;
  int _prize;

  Camera(this._id, this._brand, this._color, this._prize) {
    print("id: $id, brand: $brand, color: $color , prize: $prize");
  }
  // Getters
  int get id => _id;
  String get brand => _brand;
  String get color => _color;
  int get prize => _prize;

  // Setters
  set id(int id) => _id = id;
  set brand(String brand) => _brand = brand;
  set color(String color) => _color = color;
  set prize(int prize) => _prize = prize;
}

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//6-Create an interface called Bottle and add a method to it called open(). Create a class called CokeBottle and implement the Bottle and print the message “Coke bottle is opened”. Add a factory constructor to Bottle and return the object of CokeBottle. Instantiate CokeBottle using the factory constructor and call the open() on the object.

abstract class Bottle {
  void open();

  factory Bottle() => CokeBottle();
}

class CokeBottle implements Bottle {
  @override
  void open() {
    print("Coke bottle is opened");
  }
}

void main() {
  Laptop mac = Laptop(1, "mac", "dk");

  mac.display();

  Laptop toshiba = Laptop(1, "toshiba", "dk");

  toshiba.display();

  Laptop widowz = Laptop(1, "widowz", "dk");

  widowz.display();

  House house1 = House(1, "house1", 1);
  House house2 = House(1, "house2", 1);
  House house3 = House(1, "house3", 1);

  print(Gender.values);

  Cat saqer = Cat("mew", 1, "saqer", "beige");

  Camera camera1 = Camera(1, "camera1", "brand", 2);
  Camera camera2 = Camera(1, "camera2", "brand", 2);
  Camera camera3 = Camera(1, "camera3", "brand", 2);

  Bottle bottle = Bottle();
  bottle.open();
}
