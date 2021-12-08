import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:travel_ui/models/activity_model.dart';
import 'package:travel_ui/models/destination_model.dart';

class ActivityDetails extends StatelessWidget {
  final Destination destination;
  const ActivityDetails({required this.destination, Key? key})
      : super(key: key);

  Text _buildRatingStars(int rating) {
    String stars = '';
    for (int i = 0; i < rating; i++) {
      stars += '⭐';
    }
    return Text(stars);
  }

  @override
  Widget build(BuildContext context) => Scaffold(
        //backgroundColor: Colors.black38,
        body: Column(
          children: [
            getDestinationPicture(context, destination),
            Expanded(
              child: ListView.builder(
                itemCount: destination.activities.length,
                itemBuilder: (BuildContext context, int index) {
                  return getActivityOptions(
                      context, destination.activities[index]);
                },
              ),
            ),
          ],
        ),
      );

  Stack getActivityOptions(BuildContext context, Activity activity) => Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.white,
            ),
            margin: const EdgeInsets.fromLTRB(40.0, 5.0, 20.0, 5.0),
            height: 200,
            width: 400,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: const EdgeInsets.fromLTRB(10, 15, 10, 10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.amber,
                  image: DecorationImage(
                    image: AssetImage(activity.imageUrl),
                    fit: BoxFit.cover,
                  ),
                ),
                height: 180,
                width: 130,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: 40.0,
                  horizontal: 1,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: 150,
                      child: Text(
                        activity.name,
                        maxLines: 2,
                        style: const TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 5.0,
                    ),
                    SizedBox(
                      width: 150,
                      child: Text(
                        activity.type,
                        maxLines: 2,
                        style: const TextStyle(
                            fontSize: 16, overflow: TextOverflow.ellipsis),
                      ),
                    ),
                    const SizedBox(
                      height: 10.0,
                    ),
                    _buildRatingStars(activity.ratings),
                    const SizedBox(
                      height: 12.0,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10.0),
                      child: Row(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                                //color: Colors.amber,
                                color: Theme.of(context).accentColor,
                                borderRadius: BorderRadius.circular(30)),
                            height: 30,
                            width: 80,
                            child: Center(
                                child: Text(activity.startTimes[0].toString())),
                          ),
                          const SizedBox(
                            width: 8.0,
                          ),
                          Container(
                            decoration: BoxDecoration(
                                color: Theme.of(context).accentColor,
                                borderRadius: BorderRadius.circular(30)),
                            height: 30,
                            width: 80,
                            child: Center(
                                child: Text(activity.startTimes[1].toString())),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(330, 40, 5, 5),
            child: Column(
              children: [
                Text(
                  activity.price.toString(),
                  style: const TextStyle(
                      fontSize: 20, fontWeight: FontWeight.bold),
                ),
                const Text(
                  'BDT',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
        ],
      );

  Widget getDestinationPicture(BuildContext context, Destination destination) {
    return Container(
      height: MediaQuery.of(context).size.width,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(destination.imageUrl),
          fit: BoxFit.cover,
        ),
        borderRadius: const BorderRadius.only(
          bottomLeft: Radius.circular(20.0),
          bottomRight: Radius.circular(20.0),
        ),
        boxShadow: [
          BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              blurRadius: 2.0,
              spreadRadius: 2.0,
              offset: const Offset(0, 3))
        ],
      ),
      child: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(20.0, 30.0, 20.0, 16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                        onTap: () => Navigator.pop(context),
                        child: const Icon(FontAwesomeIcons.arrowLeft)),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: const [
                        Icon(Icons.search),
                        SizedBox(
                          width: 15.0,
                        ),
                        Icon(Icons.menu),
                      ],
                    )
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          destination.name,
                          style: const TextStyle(
                              fontSize: 28,
                              color: Colors.white,
                              fontWeight: FontWeight.w500,
                              letterSpacing: .005),
                        ),
                        Row(children: [
                          const Icon(
                            FontAwesomeIcons.locationArrow,
                            size: 14.0,
                            color: Colors.white,
                          ),
                          const SizedBox(
                            width: 10.0,
                          ),
                          Text(
                            destination.city,
                            style: const TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ]),
                      ],
                    ),
                    const Icon(Icons.location_city, color: Colors.white),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
