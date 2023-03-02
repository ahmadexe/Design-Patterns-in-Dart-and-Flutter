# Design Patterns in Flutter & Dart

## What in the world is a design pattern?
Design patterns are reusable solutions to common software design problems. 
They provide a template or a general solution for solving recurring design problems in software development. These patterns represent the collective knowledge and experience of software developers who have solved similar problems in the past, and they help to ensure that software is reliable, efficient, and easy to maintain.

## Are there any types?
Yes! Design Patterns are generally of 3 types:
- Creational Patterns
- Structural Patterns
- Behavioral Patterns

### Factory Design Pattern
```
enum LaptopBrand {
  apple,
  dell,
  hp,
}

abstract class Laptop {
  factory Laptop(LaptopBrand brand) {
    switch (brand) {
      case LaptopBrand.apple:
        return Apple();
      case LaptopBrand.dell:
        return Dell();
      case LaptopBrand.hp:
        return Hp();
    }
  }

  void os();
}

class Apple implements Laptop {
  @override
  void os() {
    print("MacOS");
  }

}

class Dell implements Laptop {
  @override
  void os() {
    print('Linux');
  }
}

class Hp implements Laptop {
  @override
  void os() {
    print('Windows');
  }
}
```

### Singleton Design Pattern
```
class School {
  School._initSchool(){
    print("ran");
  }
  static final School instance = School._initSchool();
}
```

### Prototype Design Pattern
.copyWith method is literally Prototype design pattern
```
class Student {
  final String name;
  final String reg;
  
  Student({
    required this.name,
    required this.reg,
  });

  Student copyWith({
    String? name,
    String? reg,
  }) {
    return Student(
      name: name ?? this.name,
      reg: reg ?? this.reg,
    );
  }
}
```

View source code for abstract factory design pattern and Flutter examples. 💙 
