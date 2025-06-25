  abstract class Vehicls {
    int _speed = 0;

  void move();

  void setSpeed(int speed){
    _speed = speed;
  }

  int getSpeed(){
    return _speed;
  }
  }


  class Car extends Vehicls{
    @override
    void move(){
      print('The car is moving at ${getSpeed()} km/h');
    }
  }

  void main(){
    Car myCar = Car();
    myCar.setSpeed(50);
    myCar.move();
  }
