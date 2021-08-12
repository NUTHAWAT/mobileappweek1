import 'country.dart';
import 'problem.dart';

class City extends Country with Problem {
  City() : super("Tokyo","Rabbit");

  void callSuper() {

    print("Capital : " + super.city);
    super.callHello();
  }

  @override 
  String callAnimal() {
    return "Rabbit";
  }
}