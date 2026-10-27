class CarBrand {
  String _brand;

  CarBrand(this._brand);

  String get brand => _brand;

  void shout() {
    print("CarBrand ($_brand): Ready for the open road!");
  }

  Future<String> fetchSpecs() async {
    print("Fetching data for $_brand...");
    await Future.delayed(Duration(seconds: 2));
    return "Specs for $_brand: Safety rating 5/5, System OK.";
  }
}

class LuxuryCarBrand extends CarBrand {
  LuxuryCarBrand(String brand) : super(brand);

  @override
  void shout() {
    print("LuxuryCarBrand ($brand): Unmatched comfort and elegance!");
  }
}

class SportsCarBrand extends CarBrand {
  SportsCarBrand(String brand) : super(brand);

  @override
  void shout() {
    print("SportsCarBrand ($brand): High performance and speed!");
  }
}

void main() async {
  final testCar = SportsCarBrand("Ferrari");

  testCar.shout();

  print("Program starting async fetch...");
  
  final result = await testCar.fetchSpecs();
  
  print(result);
  print("Program finished!");
}
