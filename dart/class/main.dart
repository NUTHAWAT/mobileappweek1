import 'city.dart';


void main() {
  print("Hello World");

  // Country item = new Country("Tokyo","Rabbit");

  // print("Welcome to " + item.country);
  // item.callHello();
  // print("Capital of " + item.country + " is : " + item.city);
  // print("National animal : " + item.callAnimal());

  // print("National color : " + Country.color);

  var order = City();
  print("Welcome to " + order.country);
  order.callSuper();

  print(order.callAnimal());
  order.callProblem();
}