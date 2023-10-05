class City {
  String cityName;
  String imageUrl;
  bool isPopular;

  City({
    required this.cityName,
    required this.imageUrl,
    this.isPopular = false,
  });
}

List<City> cities = [
  City(
    cityName: 'Jakarta',
    imageUrl: 'assets/city1.png',
  ),
  City(
    cityName: 'Bandung',
    imageUrl: 'assets/city2.png',
    isPopular: true,
  ),
  City(
    cityName: 'Surabaya',
    imageUrl: 'assets/city3.png',
  ),
  City(
    cityName: 'Palembang',
    imageUrl: 'assets/city4.png',
  ),
  City(
    cityName: 'Aceh',
    imageUrl: 'assets/city5.png',
  ),
  City(
    cityName: 'Bogor',
    imageUrl: 'assets/city6.png',
  ),
];
