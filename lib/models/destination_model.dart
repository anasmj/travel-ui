import 'package:travel_ui/models/activity_model.dart';

class Destination {
  String imageUrl;
  String name;
  String city;

  String description;
  List<Activity> activities;

  Destination(
      {required this.imageUrl,
      required this.name,
      required this.city,
      required this.description,
      required this.activities});
}

List<Destination> destinations = [
  Destination(
      imageUrl: 'assets/images/tourist_places/lalbag_fort.jpg',
      name: 'Lalbagh Fort',
      city: 'Old Dhaka',
      description: 'Enjoy your day in a historical place',
      activities: activities),
  Destination(
      imageUrl: 'assets/images/tourist_places/ahsan_manjil.jpg',
      name: 'Ahsan Manjil',
      city: 'Old Dhaka',
      description: 'Enjoy your day in a historical place',
      activities: activities),
  Destination(
      imageUrl: 'assets/images/tourist_places/kaptai_lake.jpg',
      name: 'Kaptai  Lake',
      city: 'Kaptai',
      description: 'Enjoy your day in a historical place',
      activities: activities),
  Destination(
      imageUrl: 'assets/images/tourist_places/national_memorial.jpg',
      name: 'National Memorial',
      city: 'Savar',
      description: 'Enjoy your day in a historical place',
      activities: activities),
  Destination(
      imageUrl: 'assets/images/tourist_places/paharpur.jpg',
      name: 'Paharpur',
      city: 'Comilla',
      description: 'Enjoy your day in a historical place',
      activities: activities),
  Destination(
      imageUrl: 'assets/images/tourist_places/rangamati.jfif',
      name: 'Rangamati',
      city: 'Rangamati',
      description: 'Enjoy your day in a historical place',
      activities: activities),
  Destination(
    imageUrl: 'assets/images/tourist_places/ratargul.jpg',
    name: 'Ratargul',
    city: 'Sylhet',
    description: 'Enjoy your day in a historical place',
    activities: activities,
  ),
  Destination(
      imageUrl: 'assets/images/tourist_places/st_martine.jpg',
      name: 'St.Martine',
      city: 'Cox\'s Bazar',
      description: 'Enjoy your day in a historical place',
      activities: activities),
  Destination(
      imageUrl: 'assets/images/tourist_places/sundarban.jpg',
      name: 'Sundarban',
      city: 'Sundarban',
      description: 'Enjoy your day in a historical place',
      activities: activities),
  Destination(
      imageUrl: 'assets/images/tourist_places/sylhet.jpg',
      name: 'Modhupur',
      city: 'Sylhet',
      description: 'Enjoy your day in a historical place',
      activities: activities),
];

List<Activity> activities = [
  Activity(
      imageUrl: 'assets/images/tourist_places/sylhet.jpg',
      name: 'Sylhet',
      type: 'Family tour',
      startTimes: ['7.00 am', '9.00 am'],
      ratings: 4,
      price: 2000),
  Activity(
      imageUrl: 'assets/images/tourist_places/sundarban.jpg',
      name: 'Sundarban',
      type: 'Advanture',
      startTimes: ['7.00 am', '9.00 am'],
      ratings: 4,
      price: 2000),
  Activity(
      imageUrl: 'assets/images/tourist_places/ratargul.jpg',
      name: 'Ratargul',
      type: 'Advanture',
      startTimes: ['7.00 am', '9.00 am'],
      ratings: 4,
      price: 2000),
  Activity(
      imageUrl: 'assets/images/tourist_places/kaptai_lake.jpg',
      name: 'Kaptai Lake',
      type: 'Family tour',
      startTimes: ['7.00 am', '9.00 am'],
      ratings: 4,
      price: 2000),
];
