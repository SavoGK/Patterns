import 'dart:math';

abstract class Observer {
  void update(var status);
}

abstract class Observable {
  final List<Observer> observers = [];

  void addObserver(Observer o);
  void notify();

}

class Stoplight extends Observable {
  bool status = false;

  void changeStatus(){
    Random random = Random();
    if (random.nextInt(3) == 0){
      status = !status;
      notify();
    }
  }

  bool getStatus() => status;

  @override
  void addObserver(Observer o) {
    observers.add(o);
    o.update(status);
  }

    @override
    void notify() {
      for (var observer in observers) {
        observer.update(status);
      }
    }
  }

class Pedestrian extends Observer{
  bool situation = false;

  bool continueWalk() {
      return situation;
  }

  @override
  void update(var status) {
    situation = status;
  }

}