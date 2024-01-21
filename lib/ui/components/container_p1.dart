import 'package:flutter/material.dart';

class NewPage extends StatelessWidget {
  const NewPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        onTap: () {
          Navigator.of(context).pop();
        },
        child: Center(
          child: Image.network(
            'https://mfiles.alphacoders.com/994/994751.jpg',
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
