import 'dart:math';

abstract class Subject {}

abstract class Observer {
  void update(int value);
}

class ConcreteSubject extends Subject {
  final List<Observer> _observers = [];

  void attach(Observer observer) {
    _observers.add(observer);
  }

  void detach(Observer observer) {
    _observers.remove(observer);
  }

  void notify() {
    for (var observer in _observers) {
      observer.update(Random().nextInt(100));
    }
  }
}

class ConcreteObserver implements Observer {
  String name;
  int val = 0;
  ConcreteObserver({required this.name}) : super();

  @override
  void update(int value) {
    val = value;
    print('Observer $name got notified with value $val');
  }
}

void main(List<String> args) {
  final subject = ConcreteSubject();
  final observer1 = ConcreteObserver(name: "Observer 1");
  final observer2 = ConcreteObserver(name: "Observer 2");

  subject.attach(observer1);
  subject.attach(observer2);

  subject.notify();

  subject.detach(observer1);

  subject.notify();
}
