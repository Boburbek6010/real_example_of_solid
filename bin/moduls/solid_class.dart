


///S(Single Responsibility)
///Yagona Javobgarlik
class Human{
  late String name;
  late String id;
  late String address;
}
class Actions {
  void run() {
    print('I can Run');
  }
  void speak(){
    print('I can Speak');
  }
}
class Emotions{
  void happy(){
    print('I am Happy today');
  }
  void sad(){
    print('I am Sad today');
  }
  void shy(){
    print('I am so Shy');
  }
}
class Authentication{
  void gender(){
    print('Male');
  }
  void age(){
    print('25');
  }
  void passportNumber(){
    print('AA00000000');
  }
  void limitedAction(){
    print('Is Not InValid');
  }
}


///O(Open-Close)
///open to add but close to change
abstract class Vehicle{
  void heating(){
    print('Car has Heating system');
  }
  void speed(){
    print('Car can run faster');
  }
}
class Tesla implements Vehicle{
  @override
  void speed() {
    print('Tesla speed is 260 km/soat');
  }

  @override
  void heating() {
    print('Heating system');
  }

  void senseOfDanger(){
    print('Tesla has a sense of danger from 6 metre');
  }

  void charging(){
    print('Tesla Can Charge Accumulator by default during the journey');
  }
}
class Spark implements Vehicle{
  @override
  void speed() {
    print('Spark speed is 180 km/soat');
  }

  @override
  void heating() {
    print('Spark has heating system');
  }

}


///L(Liskov Substitution)
abstract class ForFlyerAnimal{
  void eat();
  void sleep();
  void fly();
}
abstract class ForNormalAnimal{
  void eat();
  void sleep();
}
abstract class ForSwimmers{
  void eat();
  void sleep();
  void swim();
}

class Bird implements ForFlyerAnimal{
  @override
  void eat() {
    print('Bird can Eat');
  }

  @override
  void fly() {
    print('Bird can Fly');
  }

  @override
  void sleep() {
    print('Bird can Sleep');
  }

}
class Cat implements ForNormalAnimal{
  @override
  void eat() {
    print('Cat can Eat');
  }

  @override
  void sleep() {
    print('Cat can Eat');
  }

}
class Shark implements ForSwimmers{
  @override
  void eat() {
    print('Shark can Eat');
  }

  @override
  void sleep() {
    print('Shark can Eat');
  }

  @override
  void swim() {
    print('Shark can Swim');
  }

}




///I(Interface Segregation)
///Interfacelarni ajratish
abstract class PDP{
  void usingLibrary(){
    print('this is available for only Bootcampists');    
  }
  void payment(){
    print('this is for all except from Unicorns');
  }
  void givingJob(){
    print('this is for only Unicorns');
  }
}

class Foundation implements PDP{
  @override
  void givingJob() {
    print('Not guaranteed');
  }

  @override
  void payment() {
    print('Pay monthly');
  }

  @override
  void usingLibrary() {
    print('Not Allowed');
  }
}
class Bootcamp implements PDP{
  @override
  void givingJob() {
    print('not guaranteed');
  }

  @override
  void payment() {
    print('Pay monthly or available fully discount of 23% ');
  }

  @override
  void usingLibrary() {
    print('Allowed');
  }
  
}
class Unicorn implements PDP{
  @override
  void givingJob() {
    print('Guaranteed');
  }

  @override
  void payment() {
    print('at last');
  }

  @override
  void usingLibrary() {
    print('Allowed');
  }
  
}





///D(Dependency Inversion)
///Bog'liqlik inversiyasi
class Cattle{
  void feeding(){
    print('Giving them plants');
  }
  void milking(){
    print('Employees of Cattle Farm milk the cow');
  }
  void watering(){
    print('Cattes is being watered');
  }
}

class Simulating implements Cattle{
  @override
  void feeding() {
    // TODO: implement feeding
  }

  @override
  void milking() {
    // TODO: implement milking
  }

  @override
  void watering() {
    // TODO: implement watering
  }
}

/**
 * bu yerda bogliqlik bolmadi yani muammo bor
 * buni togirlashliq uchun bizga Dependency inversion kerak
 * yani undan foydalanib biz hammasi uchun umumiy bolgan FATHER
 * CLASS yozishimiz kerak Farming degan
 */