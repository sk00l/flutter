import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:instagram_app/ui/components/bottom_navigation_bar.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.black,
        title: const Row(
          children: [
            Text(
              "ramprasad ",
              style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            ),
            FaIcon(
              FontAwesomeIcons.angleDown,
              color: Colors.white,
              size: 16,
            )
          ],
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 8.0),
            child: Row(
              children: [
                FaIcon(
                  FontAwesomeIcons.plus,
                  color: Colors.white,
                ),
                SizedBox(
                  width: 20,
                ),
                FaIcon(
                  FontAwesomeIcons.bars,
                  color: Colors.white,
                )
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: const BottomNavigationBaar(),
    );
  }
}
