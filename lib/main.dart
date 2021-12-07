import 'package:flutter/material.dart';
import 'package:travel_ui/screens/home_screen/home_screen.dart';

void main() => runApp(const TravelApp());

class TravelApp extends StatelessWidget {
  const TravelApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => MaterialApp(
        title: "Flutter Travel UI",
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primaryColor: const Color(0xFF3EBACE),
          accentColor: const Color(0xFFD8ECF1),
          scaffoldBackgroundColor: const Color(0xFFF3F5F7),
        ),
        home: const HomeScreen(),
      );
}
