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
      body: const SingleChildScrollView(
        child: Padding(
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
              )
            ],
          ),
        ),
      ),
    );
  }
}
