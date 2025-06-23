abstract class Vehicle{
  int _speed = 0;
      
  void move();  
  
  int get speed => _speed;
  
  setSpeed(int speed){
    if(speed >0){
      _speed = speed;
      print('The current speed of the car is $speed km/h');
    }else if(speed == 0) {
      _speed = speed;
      print('Speed of the car is $speed, the car is now standing still.');
    }else{
      print('Car speed can\'t be negative');
    }
  }
}

class Car extends Vehicle{
 
  @override
  move(){
    print('The car is moving at $_speed km/h');
  }
}

void main(){
  Car car = Car();
  car.setSpeed(0);
  car.move();
}
