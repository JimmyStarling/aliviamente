import 'dart:collection';

const APP_NAME = "Fastmood";

class Cards {
  int id;
  String color;

  Cards(this.id, this.color);

  @override
  String toString() {
    return '{ ${this.id}, ${this.color} }';
  }
}
