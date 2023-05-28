abstract class Shape {
  String? type;

  Shape clone();

  void draw() {
    print("Drawing a $type");
  }
}

class Circle extends Shape {
  double radius;

  Circle(this.radius) {
    type = "Circle";
  }

  @override
  Shape clone() {
    return Circle(radius);
  }
}

class Rectangle extends Shape {
  double width;
  double height;

  Rectangle(this.width, this.height) {
    type = "Rectangle";
  }

  @override
  Shape clone() {
    return Rectangle(width, height);
  }
}

void main() {
  // Create a prototype instance of Circle
  Circle originalCircle = Circle(5.0);

  // Clone the originalCircle to create a new instance
  Circle clonedCircle = originalCircle.clone() as Circle;

  // Verify that the clonedCircle is a separate instance with the same properties
  print(originalCircle == clonedCircle); // false
  print(originalCircle.radius); 
  print(clonedCircle.radius); 

  // Create a prototype instance of Rectangle
  Rectangle originalRectangle = Rectangle(10.0, 7.0);

  // Clone the originalRectangle to create a new instance
  Rectangle clonedRectangle = originalRectangle.clone() as Rectangle;

  // Verify that the clonedRectangle is a separate instance with the same properties
  print(originalRectangle == clonedRectangle); 
  print(originalRectangle.width); 
  print(clonedRectangle.width); 
  print(originalRectangle.height); 
  print(clonedRectangle.height); 
}