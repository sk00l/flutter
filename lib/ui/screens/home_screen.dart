import 'package:assignment7/ui/components/text_field_component.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF7F7F7),
      appBar: AppBar(
        toolbarHeight: 60,
        backgroundColor: const Color(0xffF8F9FD),
        leading: IconButton(
          onPressed: () {},
          icon: const FaIcon(
            FontAwesomeIcons.arrowLeft,
            size: 20,
          ),
        ),
        title: const Text(
          'Add Books Distributed',
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const FaIcon(
              FontAwesomeIcons.ellipsisVertical,
              size: 20,
            ),
          )
        ],
      ),
      body: Column(
        children: [
          const Padding(
            padding: EdgeInsets.fromLTRB(20, 20, 20, 8),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text('Enter donations received for Today'),
                    SizedBox(
                      width: 40,
                    ),
                    Icon(Icons.calendar_month_outlined),
                    Text('Jan, 2024'),
                  ],
                ),
                SizedBox(height: 24),
                TextFieldComponent(
                  textBoxTitles: [
                    'Cash',
                    'Checks',
                    'Post-dated Checks',
                    'Credit Cards',
                    'E-payment'
                  ],
                ),
              ],
            ),
          ),
          const Spacer(),
          Container(
            color: Colors.white,
            height: 130,
            padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
            child: Column(
              children: [
                const Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text('Total Donation Collected'),
                    Spacer(),
                    Text("220"),
                  ],
                ),
                const SizedBox(height: 12),
                buildProfileButton('Add Donation received')
              ],
            ),
          )
        ],
      ),
    );
  }
}

Widget buildProfileButton(String text) {
  return Container(
    decoration: BoxDecoration(
      color: const Color(0xff45A621),
      borderRadius: BorderRadius.circular(4),
    ),
    height: 48,
    child: Center(
      child: Text(
        text,
        style: const TextStyle(
          fontSize: 14,
          color: Colors.white,
        ),
      ),
    ),
  );
}
