import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CircularRowIcons extends StatefulWidget {
  const CircularRowIcons({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => CircularRowIconsState();
}

class CircularRowIconsState extends State<CircularRowIcons> {
  final List<IconData> _icons = [
    FontAwesomeIcons.plane,
    FontAwesomeIcons.adn,
    FontAwesomeIcons.walking,
    FontAwesomeIcons.biking,
  ];

  int _selectedIconState = 0;
  @override
  Widget build(BuildContext context) => Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: _icons
            .asMap()
            .entries
            .map((MapEntry map) => _buildIcon(map.key))
            .toList(),
      );
  Widget _buildIcon(int index) => Builder(
        builder: (context) => GestureDetector(
          onTap: () => setState(() => _selectedIconState = index),
          child: Container(
            child: Icon(
              _icons[index],
              size: 25.0,
              color: _selectedIconState == index
                  ? Theme.of(context).primaryColor
                  : const Color(0xffb4c1c4),
            ),
            height: 60,
            width: 60,
            decoration: BoxDecoration(
                color: _selectedIconState == index
                    ? Theme.of(context).accentColor
                    : const Color(0x0ffe7ebe),
                borderRadius: BorderRadius.circular(30)),
          ),
        ),
      );
}
