abstract class Sandwich {
  void makeSandwich() {
    getBread();
    if (wantMeat()) {
      getMeat();
    }
    if (wantCheese()) {
      getCheese();
    }
    wrapSandwich();
  }

  void getBread();
  bool wantMeat();
  bool wantCheese();
  void getMeat();
  void getCheese();
  void wrapSandwich();
}

class ChickenSandwich extends Sandwich {
  @override
  void getBread() {
    print('Getting bread');
  }

  @override
  void getCheese() {
    print('Getting cheese');
  }

  @override
  void getMeat() {
    print('Getting chicken');
  }

  @override
  bool wantCheese() {
    return false;
  }

  @override
  bool wantMeat() {
    return true;
  }

  @override
  void wrapSandwich() {
    print('Wrapping sandwich');
  }
}

void main(List<String> args) {
  var sandwich = ChickenSandwich();
  sandwich.makeSandwich();
}