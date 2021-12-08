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
      activities: activitiesInLalbaghFort),
  Destination(
      imageUrl: 'assets/images/tourist_places/ahsan_manjil.jpg',
      name: 'Ahsan Manjil',
      city: 'Old Dhaka',
      description: 'Enjoy your day in a historical place',
      activities: activitiesInAhsanMajnil),
  Destination(
      imageUrl: 'assets/images/tourist_places/kaptai_lake.jpg',
      name: 'Kaptai  Lake',
      city: 'Kaptai',
      description: 'Boat tour in sound nature',
      activities: activitiesInKaptaiLake),
  Destination(
    imageUrl: 'assets/images/tourist_places/sylhet.jpg',
    name: 'Sylhet',
    city: 'Sylhet',
    description: 'Breathtaking sightseeing tour in Sylhet',
    activities: activitiesInSylhet,
  ),
  Destination(
      imageUrl: 'assets/images/tourist_places/national_memorial.jpg',
      name: 'National Memorial',
      city: 'Savar',
      description: 'Visit historical monument of freedom fighters',
      activities: activitiesInNationalMemorial),
  Destination(
      imageUrl: 'assets/images/tourist_places/paharpur.jpg',
      name: 'Paharpur',
      city: 'Comilla',
      description: 'Know about architechtural monuments in Paharpur',
      activities: activitiesInPaharpur),
  Destination(
      imageUrl: 'assets/images/tourist_places/rangamati.jfif',
      name: 'Rangamati',
      city: 'Rangamati',
      description: 'Beautiful trip in mountain',
      activities: activitiesInRangamati),
  Destination(
      imageUrl: 'assets/images/tourist_places/st_martine.jpg',
      name: 'St.Martine',
      city: 'Cox\'s Bazar',
      description: 'Largest sea beach in the world!',
      activities: activitiesInStMartine),
  Destination(
      imageUrl: 'assets/images/tourist_places/sundarban.jpg',
      name: 'Sundarban',
      city: 'Sundarban',
      description: 'Only place where you can see tigher in wild',
      activities: activitiesInSundarban),
];

List<Activity> activitiesInSundarban = [
  Activity(
      imageUrl: 'assets/images/activities/bisanakandi.jfif',
      name: 'Bisanakandi',
      type: 'Sight Seeing tour',
      startTimes: ['7.00 am', '02.00 pm'],
      ratings: 5,
      price: 2000),
  Activity(
      imageUrl: 'assets/images/activities/bisanakandi.jfif',
      name: 'Bisanakandi',
      type: 'Sight Seeing tour',
      startTimes: ['7.00 am', '02.00 pm'],
      ratings: 5,
      price: 2000),
  Activity(
      imageUrl: 'assets/images/activities/bisanakandi.jfif',
      name: 'Bisanakandi',
      type: 'Sight Seeing tour',
      startTimes: ['7.00 am', '02.00 pm'],
      ratings: 5,
      price: 2000),
  Activity(
      imageUrl: 'assets/images/activities/bisanakandi.jfif',
      name: 'Bisanakandi',
      type: 'Sight Seeing tour',
      startTimes: ['7.00 am', '02.00 pm'],
      ratings: 5,
      price: 2000),
  Activity(
      imageUrl: 'assets/images/activities/bisanakandi.jfif',
      name: 'Bisanakandi',
      type: 'Sight Seeing tour',
      startTimes: ['7.00 am', '02.00 pm'],
      ratings: 5,
      price: 2000),
  Activity(
      imageUrl: 'assets/images/activities/bisanakandi.jfif',
      name: 'Bisanakandi',
      type: 'Sight Seeing tour',
      startTimes: ['7.00 am', '02.00 pm'],
      ratings: 5,
      price: 2000),
];

List<Activity> activitiesInStMartine = [
  Activity(
      imageUrl: 'assets/images/activities/bisanakandi.jfif',
      name: 'Bisanakandi',
      type: 'Sight Seeing tour',
      startTimes: ['7.00 am', '02.00 pm'],
      ratings: 5,
      price: 2000),
  Activity(
      imageUrl: 'assets/images/activities/bisanakandi.jfif',
      name: 'Bisanakandi',
      type: 'Sight Seeing tour',
      startTimes: ['7.00 am', '02.00 pm'],
      ratings: 5,
      price: 2000),
  Activity(
      imageUrl: 'assets/images/activities/bisanakandi.jfif',
      name: 'Bisanakandi',
      type: 'Sight Seeing tour',
      startTimes: ['7.00 am', '02.00 pm'],
      ratings: 5,
      price: 2000),
];

List<Activity> activitiesInRangamati = [
  Activity(
      imageUrl: 'assets/images/activities/bisanakandi.jfif',
      name: 'Bisanakandi',
      type: 'Sight Seeing tour',
      startTimes: ['7.00 am', '02.00 pm'],
      ratings: 5,
      price: 2000),
  Activity(
      imageUrl: 'assets/images/activities/bisanakandi.jfif',
      name: 'Bisanakandi',
      type: 'Sight Seeing tour',
      startTimes: ['7.00 am', '02.00 pm'],
      ratings: 5,
      price: 2000),
  Activity(
      imageUrl: 'assets/images/activities/bisanakandi.jfif',
      name: 'Bisanakandi',
      type: 'Sight Seeing tour',
      startTimes: ['7.00 am', '02.00 pm'],
      ratings: 5,
      price: 2000),
  Activity(
      imageUrl: 'assets/images/activities/bisanakandi.jfif',
      name: 'Bisanakandi',
      type: 'Sight Seeing tour',
      startTimes: ['7.00 am', '02.00 pm'],
      ratings: 5,
      price: 2000),
  Activity(
      imageUrl: 'assets/images/activities/bisanakandi.jfif',
      name: 'Bisanakandi',
      type: 'Sight Seeing tour',
      startTimes: ['7.00 am', '02.00 pm'],
      ratings: 5,
      price: 2000),
  Activity(
      imageUrl: 'assets/images/activities/bisanakandi.jfif',
      name: 'Bisanakandi',
      type: 'Sight Seeing tour',
      startTimes: ['7.00 am', '02.00 pm'],
      ratings: 5,
      price: 2000),
];

List<Activity> activitiesInPaharpur = [
  Activity(
      imageUrl: 'assets/images/activities/bisanakandi.jfif',
      name: 'Bisanakandi',
      type: 'Sight Seeing tour',
      startTimes: ['7.00 am', '02.00 pm'],
      ratings: 5,
      price: 2000),
  Activity(
      imageUrl: 'assets/images/activities/bisanakandi.jfif',
      name: 'Bisanakandi',
      type: 'Sight Seeing tour',
      startTimes: ['7.00 am', '02.00 pm'],
      ratings: 5,
      price: 2000),
  Activity(
      imageUrl: 'assets/images/activities/bisanakandi.jfif',
      name: 'Bisanakandi',
      type: 'Sight Seeing tour',
      startTimes: ['7.00 am', '02.00 pm'],
      ratings: 5,
      price: 2000),
  Activity(
      imageUrl: 'assets/images/activities/bisanakandi.jfif',
      name: 'Bisanakandi',
      type: 'Sight Seeing tour',
      startTimes: ['7.00 am', '02.00 pm'],
      ratings: 5,
      price: 2000),
];

List<Activity> activitiesInNationalMemorial = [
  Activity(
      imageUrl: 'assets/images/activities/bisanakandi.jfif',
      name: 'Bisanakandi',
      type: 'Sight Seeing tour',
      startTimes: ['7.00 am', '02.00 pm'],
      ratings: 5,
      price: 2000),
  Activity(
      imageUrl: 'assets/images/activities/bisanakandi.jfif',
      name: 'Bisanakandi',
      type: 'Sight Seeing tour',
      startTimes: ['7.00 am', '02.00 pm'],
      ratings: 5,
      price: 2000),
];

List<Activity> activitiesInKaptaiLake = [
  Activity(
      imageUrl: 'assets/images/activities/bisanakandi.jfif',
      name: 'Bisanakandi',
      type: 'Sight Seeing tour',
      startTimes: ['7.00 am', '02.00 pm'],
      ratings: 5,
      price: 2000),
  Activity(
      imageUrl: 'assets/images/activities/bisanakandi.jfif',
      name: 'Bisanakandi',
      type: 'Sight Seeing tour',
      startTimes: ['7.00 am', '02.00 pm'],
      ratings: 5,
      price: 2000),
  Activity(
      imageUrl: 'assets/images/activities/bisanakandi.jfif',
      name: 'Bisanakandi',
      type: 'Sight Seeing tour',
      startTimes: ['7.00 am', '02.00 pm'],
      ratings: 5,
      price: 2000),
];

List<Activity> activitiesInLalbaghFort = [
  Activity(
      imageUrl: 'assets/images/activities/bisanakandi.jfif',
      name: 'Bisanakandi',
      type: 'Sight Seeing tour',
      startTimes: ['7.00 am', '02.00 pm'],
      ratings: 5,
      price: 2000),
  Activity(
      imageUrl: 'assets/images/activities/bisanakandi.jfif',
      name: 'Bisanakandi',
      type: 'Sight Seeing tour',
      startTimes: ['7.00 am', '02.00 pm'],
      ratings: 5,
      price: 2000),
  Activity(
      imageUrl: 'assets/images/activities/bisanakandi.jfif',
      name: 'Bisanakandi',
      type: 'Sight Seeing tour',
      startTimes: ['7.00 am', '02.00 pm'],
      ratings: 5,
      price: 2000),
];

List<Activity> activitiesInAhsanMajnil = [
  Activity(
      imageUrl: 'assets/images/activities/bisanakandi.jfif',
      name: 'Bisanakandi',
      type: 'Sight Seeing tour',
      startTimes: ['7.00 am', '02.00 pm'],
      ratings: 5,
      price: 2000),
  Activity(
      imageUrl: 'assets/images/activities/bisanakandi.jfif',
      name: 'Bisanakandi',
      type: 'Sight Seeing tour',
      startTimes: ['7.00 am', '02.00 pm'],
      ratings: 5,
      price: 2000),
];

List<Activity> activitiesInSylhet = [
  Activity(
      imageUrl: 'assets/images/activities/bisanakandi.jfif',
      name: 'Bisanakandi',
      type: 'Sight Seeing tour',
      startTimes: ['7.00 am', '02.00 pm'],
      ratings: 5,
      price: 2000),
  Activity(
      imageUrl: 'assets/images/activities/hamham.png',
      name: 'Ham Ham Waterfall',
      type: 'Advanture',
      startTimes: ['7.00 am', '5.00 pm'],
      ratings: 5,
      price: 1500),
  Activity(
      imageUrl: 'assets/images/activities/khadim_nagar.jpg',
      name: 'Khadim Nagar Tational Park',
      type: 'Family tour',
      startTimes: ['9.00 am', '01.00 pm'],
      ratings: 4,
      price: 1200),
  Activity(
      imageUrl: 'assets/images/activities/pangthumai.jpg',
      name: 'Pangthumai waterfall',
      type: 'Advanture tour',
      startTimes: ['7.00 am', '3.00 pm'],
      ratings: 4,
      price: 1000),
  Activity(
      imageUrl: 'assets/images/activities/ratargul.jpg',
      name: 'Ratargul',
      type: 'Advanture tour',
      startTimes: ['7.00 am', '2.00 pm'],
      ratings: 5,
      price: 2500),
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
