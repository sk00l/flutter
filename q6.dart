import 'dart:math';
import 'dart:io';


abstract class Shape {
  double calPerimeter();
  double calArea();
}


class Circle extends Shape {
  double radius;

  Circle(this.radius);

  @override
  double calPerimeter() {
    return 2 * pi * radius;
  }

  @override
  double calArea() {
    return pi * radius * radius;
  }
}


class Rectangle extends Shape {
  double length;
  double breadth;

  Rectangle(this.length, this.breadth);

  @override
  double calPerimeter() {
    return 2 * (length + breadth);
  }

  @override
  double calArea() {
    return length * breadth;
  }
}

void main() {

  print("enter the radius of the cicle:");
  var radius = double.parse(stdin.readLineSync()!);
  Circle circle = Circle(radius);

  print("enter the legth  of the rectang;e:");
  var length = double.parse(stdin.readLineSync()!);

  print("enter the legth  of the rectangle:");
  var breadth = double.parse(stdin.readLineSync()!);

  Rectangle rectangle = Rectangle(length, breadth);
  

  print("Circle - Perimeter: ${circle.calPerimeter().toStringAsFixed(2)}, Area: ${circle.calArea().toStringAsFixed(2)}");
  print("Rectangle - Perimeter: ${rectangle.calPerimeter().toStringAsFixed(2)}, Area: ${rectangle.calArea().toStringAsFixed(2)}");
}
