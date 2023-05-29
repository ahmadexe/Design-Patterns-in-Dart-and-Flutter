/*
  Remember folks
  * Inherit from abstraction.
  * Create enums, don't rely on string.
  * Follow Liskov's substitution principal: Child classes can be freely used with parent as type.
*/

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

void main(List<String> args) {
  Laptop laptop = Laptop(LaptopBrand.apple);
  laptop.os();
}