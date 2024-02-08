import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class EditProfileScreenBio extends StatefulWidget {
  const EditProfileScreenBio({super.key});

  @override
  State<EditProfileScreenBio> createState() => _EditProfileScreenBioState();
}

class _EditProfileScreenBioState extends State<EditProfileScreenBio> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        actions: [
          IconButton(
              onPressed: () {},
              icon: const FaIcon(
                FontAwesomeIcons.check,
                color: Colors.blue,
              ))
        ],
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: const FaIcon(
            FontAwesomeIcons.xmark,
            color: Colors.white,
          ),
        ),
        title: const Text(
          "Bio",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            TextFormField(
              decoration: const InputDecoration(
                enabledBorder: UnderlineInputBorder(
                    borderSide:
                        BorderSide(color: Color.fromARGB(255, 255, 255, 255))),
                focusedBorder: UnderlineInputBorder(
                    borderSide:
                        BorderSide(color: Color.fromARGB(255, 255, 255, 255))),
                labelText: "Bio",
                labelStyle: TextStyle(color: Colors.white),
                floatingLabelBehavior: FloatingLabelBehavior.always,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
