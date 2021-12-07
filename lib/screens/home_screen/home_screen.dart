import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:travel_ui/models/destination_model.dart';
import 'package:travel_ui/models/hotel_model.dart';
import 'package:travel_ui/screens/activity_details_screen/activity_details.dart';
import 'home_screen_widgets/circular_row_icons.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);
  final _headingStyle = const TextStyle(
      fontSize: 28, fontWeight: FontWeight.bold, letterSpacing: 0.01);

  @override
  Widget build(BuildContext context) => Scaffold(
        body: SafeArea(
          child: ListView(
            children: [
              const Padding(
                padding: EdgeInsets.fromLTRB(8.0, 30.0, 20.0, 8.0),
                child: Text(
                  'What you would like to find? ',
                  style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.0),
                child: CircularRowIcons(),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Top Destinations', style: _headingStyle),
                    Text(
                      'See All',
                      style: TextStyle(color: Theme.of(context).primaryColor),
                    )
                  ],
                ),
              ),
              destinationListView(context),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Exclusive Hotels', style: _headingStyle),
                    Text(
                      'See All',
                      style: TextStyle(color: Theme.of(context).primaryColor),
                    ),
                  ],
                ),
              ),
              hotelListView(
                context,
              )
            ],
          ),
        ),
      );

  Container destinationListView(BuildContext context) {
    return Container(
      color: Theme.of(context).scaffoldBackgroundColor,
      height: 320,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: destinations.length,
        itemBuilder: (BuildContext context, int index) {
          Destination destination = destinations[index];

          return GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => ActivityDetails(
                          destination: destination,
                        )),
              );
            },
            child: Container(
              margin: const EdgeInsets.all(5.0),
              //color: Colors.blue,
              color: Theme.of(context).scaffoldBackgroundColor,
              width: 250,
              child: Stack(
                children: [
                  Align(
                      alignment: Alignment.bottomCenter,
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white,
                        ),
                        height: 150,
                        width: 250,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 10.0, vertical: 20),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                '${destination.activities.length.toString()} Activities',
                                style: const TextStyle(
                                    fontSize: 24.0,
                                    fontWeight: FontWeight.w500),
                              ),
                              const SizedBox(
                                height: 5.0,
                              ),
                              Text(
                                destination.description,
                                maxLines: 2,
                                style: const TextStyle(
                                    fontSize: 14,
                                    overflow: TextOverflow.ellipsis),
                              ),
                            ],
                          ),
                        ),
                      )),
                  Align(
                    alignment: Alignment.topCenter,
                    child: Stack(
                      children: [
                        Container(
                          margin: const EdgeInsets.symmetric(horizontal: 8.0),
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage(destination.imageUrl),
                              fit: BoxFit.cover,
                            ),
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.orangeAccent,
                          ),
                          //margin: const EdgeInsets.all(6.0),
                          height: 220,
                          //width: 220,
                        ),
                        Padding(
                          //padding: const EdgeInsets.fromLTRB(30, 160, 0, 0),
                          padding: const EdgeInsets.only(left: 30, top: 160),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Flexible(
                                child: Text(
                                  destination.name,
                                  style: const TextStyle(
                                      color: Colors.white, fontSize: 22),
                                ),
                              ),
                              Row(
                                children: [
                                  const Icon(
                                    FontAwesomeIcons.locationArrow,
                                    color: Colors.white,
                                    size: 14.0,
                                  ),
                                  const SizedBox(
                                    width: 10.0,
                                  ),
                                  Flexible(
                                    child: Text(
                                      destination.city,
                                      style:
                                          const TextStyle(color: Colors.white),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }

  SizedBox hotelListView(BuildContext context) {
    return SizedBox(
      //color: Theme.of(context).scaffoldBackgroundColor,
      //color: Colors.redAccent,
      height: 320,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 5,
        itemBuilder: (BuildContext context, int index) {
          Hotel hotel = hotels[index];

          return Container(
            margin: const EdgeInsets.all(5.0),
            //color: Colors.blue,
            //color: Theme.of(context).scaffoldBackgroundColor,
            width: 250,
            child: Stack(
              children: [
                Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        //color: Colors.indigoAccent,
                      ),
                      height: 150,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 10.0, vertical: 20),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              hotel.name,
                              maxLines: 1,
                              style: const TextStyle(
                                fontSize: 24.0,
                                fontWeight: FontWeight.w500,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                            Text(
                              hotel.address,
                              style: const TextStyle(fontSize: 14),
                            ),
                            Text(
                              '${hotel.price} BDT/night',
                              style: const TextStyle(fontSize: 14),
                            ),
                          ],
                        ),
                      ),
                    )),
                Align(
                  alignment: Alignment.topCenter,
                  child: Container(
                    margin: const EdgeInsets.symmetric(horizontal: 8.0),
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(hotel.imageUrl),
                        fit: BoxFit.cover,
                      ),
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.orangeAccent,
                    ),
                    //margin: const EdgeInsets.all(6.0),
                    height: 220,
                    //width: 220,
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
