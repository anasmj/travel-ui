class Hotel {
  String imageUrl;
  String name;
  String address;
  double price;
  Hotel({
    required this.imageUrl,
    required this.name,
    required this.address,
    required this.price,
  });
}

List<Hotel> hotels = [
  Hotel(
      imageUrl: 'assets/images/hotels/hotel_71.jpg',
      name: 'Hotel 71',
      address: '52 Purana paltan, Dhaka',
      price: 2500),
  Hotel(
      imageUrl: 'assets/images/hotels/pan_pacific.jpg',
      name: 'Pan Pacific Sonargoan',
      address: '25 Karwanbazar, Dhaka',
      price: 5600),
  Hotel(
      imageUrl: 'assets/images/hotels/residency.jpg',
      name: 'Hotel Residency',
      address: '2 Banani, Dhaka',
      price: 8500),
  Hotel(
      imageUrl: 'assets/images/hotels/sarina.jpg',
      name: 'Hotel Sarina',
      address: 'Pallabi, Dhaka',
      price: 3400),
  Hotel(
      imageUrl: 'assets/images/hotels/suktara.jpg',
      name: 'Hotel Suktara',
      address: 'Mirpur 14, Dhaka',
      price: 4300),
  Hotel(
      imageUrl: 'assets/images/hotels/richmond.jpeg',
      name: 'Hotel Richmond',
      address: 'Motijheel, Dhaka',
      price: 4700),
];
