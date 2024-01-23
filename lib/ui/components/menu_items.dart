import 'package:flutter/material.dart';

class MenuItems extends StatelessWidget {
  const MenuItems({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          height: 50,
          width: 40,
          color: Colors.deepPurple[300],
        ),
        Container(
          height: 50,
          color: Colors.deepPurple[300],
        ),
        Container(
          height: 50,
          color: Colors.deepPurple[300],
        ),
      ],
    );
  }
}
