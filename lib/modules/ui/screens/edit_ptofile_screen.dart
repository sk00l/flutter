import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class EditProfileScreen extends StatefulWidget {
  const EditProfileScreen({super.key});

  @override
  State<EditProfileScreen> createState() => _EditProfileScreenState();
}

class _EditProfileScreenState extends State<EditProfileScreen> {
  FocusNode myFocusNode = FocusNode();

  bool isSwitched = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: IconButton(
          onPressed: () {},
          icon: const FaIcon(
            FontAwesomeIcons.arrowLeft,
            size: 20,
            color: Colors.white,
          ),
        ),
        title: const Text(
          'Edit profile',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w500,
            color: Colors.white,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(8, 8, 8, 8),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Align(
              alignment: Alignment.center,
              child: Column(
                children: [
                  const CircleAvatar(
                    radius: 40,
                    backgroundImage: NetworkImage(
                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRF1IwK6-SxM83UpFVY6WtUZxXx-phss_gAUfdKbkTfau6VWVkt",
                    ),
                  ),
                  TextButton(
                      onPressed: () {},
                      child: const Text(
                        'Change progile photo',
                        style: TextStyle(
                            color: Colors.blue, fontWeight: FontWeight.w600),
                      ))
                ],
              ),
            ),
            textfield(name: 'Name', focusNode: myFocusNode),
            textfield(name: 'Username', focusNode: myFocusNode),
            textfield(name: 'Bio', focusNode: myFocusNode),
            const SizedBox(
              height: 8,
            ),
            InkWell(
              onTap: () {},
              child: const Text(
                'Add link',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.w700),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            textfield(name: 'Gender', focusNode: myFocusNode),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 20, 8, 8),
              child: Row(
                children: [
                  const Text(
                    'Show Threads Badge',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                    ),
                  ),
                  Switch(
                    value: isSwitched,
                    onChanged: (value) {
                      setState(() {
                        isSwitched = value;
                      });
                    },
                    // activeTrackColor: Colors.blueAccent,
                    // activeColor: Colors.blue,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

Widget textfield({required String name, required FocusNode focusNode}) {
  return TextFormField(
    focusNode: focusNode,
    decoration: InputDecoration(
        enabledBorder: const UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.white)),
        focusedBorder: const UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.white)),
        labelText: name,
        floatingLabelBehavior: FloatingLabelBehavior.always,
        labelStyle:
            TextStyle(color: focusNode.hasFocus ? Colors.white : Colors.white)),
  );
}
