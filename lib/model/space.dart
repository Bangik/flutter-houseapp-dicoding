class Space {
  int id;
  String name;
  String imageUrl;
  int price;
  String city;
  String country;
  int rating;
  String address;
  String phone;
  String mapUrl;
  List photos;
  int numberOfKitchens;
  int numberOfBedrooms;
  int numberOfCupboards;

  Space({
    required this.city,
    required this.country,
    required this.id,
    required this.imageUrl,
    required this.name,
    required this.price,
    required this.rating,
    required this.address,
    required this.mapUrl,
    required this.numberOfBedrooms,
    required this.numberOfCupboards,
    required this.numberOfKitchens,
    required this.phone,
    required this.photos,
  });
}

List<Space> spaces = [
  Space(
    id: 1,
    name: 'Kuretakeso Hott',
    imageUrl: 'assets/space1.png',
    price: 52,
    rating: 4,
    city: 'Bandung',
    country: 'Germany',
    address: 'Jln. Setiabudhi No. 193',
    phone: '(022) 873437',
    mapUrl: 'https://goo.gl/maps/4vCnQogEz5M2',
    photos: [
      'assets/space1.png',
      'assets/space2.png',
      'assets/space3.png',
    ],
    numberOfKitchens: 2,
    numberOfBedrooms: 3,
    numberOfCupboards: 3,
  ),
  Space(
    id: 2,
    name: 'Roemah Nenek',
    imageUrl: 'assets/space2.png',
    price: 11,
    rating: 5,
    city: 'Jakarta',
    country: 'Indonesia',
    address: 'Jln. Setiabudhi No. 193',
    phone: '(022) 873437',
    mapUrl: 'https://goo.gl/maps/4vCnQogEz5M2',
    photos: [
      'assets/space1.png',
      'assets/space2.png',
      'assets/space3.png',
    ],
    numberOfKitchens: 2,
    numberOfBedrooms: 3,
    numberOfCupboards: 3,
  ),
  Space(
    id: 3,
    name: 'Darrling How',
    imageUrl: 'assets/space3.png',
    price: 20,
    rating: 4,
    city: 'Bandung',
    country: 'Germany',
    address: 'Jln. Setiabudhi No. 193',
    phone: '(022) 873437',
    mapUrl: 'https://goo.gl/maps/4vCnQogEz5M2',
    photos: [
      'assets/space1.png',
      'assets/space3.png',
      'assets/space2.png',
    ],
    numberOfKitchens: 2,
    numberOfBedrooms: 3,
    numberOfCupboards: 3,
  ),
];
