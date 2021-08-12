class Country {
  var country = "Japan";
  var city;
  var _animal = "Tanuki";
  static var color = "RED";

  Country(this.city, this._animal);

  Country.japan(String city, String animal) : this(city, animal);

  void callHello() {
    print("Ohayou");
  }

  String callAnimal() {
    return this._animal;
  }
}