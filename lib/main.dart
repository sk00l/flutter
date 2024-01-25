import 'package:flutter/material.dart';
// import 'package:instagram_app/ui/components/post_component.dart';
// import 'package:instagram_app/ui/components/bottom_navigation_bar.dart';
// import 'package:instagram_app/ui/components/story_component.dart';
import 'package:instagram_app/ui/screens/instagram_welcome_page.dart';
import 'package:instagram_app/ui/screens/login_screen.dart';
// import 'package:instagram_app/ui/screens/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: LoginPage(),
    );
  }
}
