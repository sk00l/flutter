import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:instagram_app/ui/components/post_component.dart';
import 'package:instagram_app/ui/components/story_component.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        // leading: const SizedBox(),
        toolbarHeight: 80,
        backgroundColor: Colors.black,
        title: const Text(
          'Instagram',
          style: TextStyle(
            fontFamily: "Billabong",
            fontSize: 32,
            color: Colors.white,
          ),
        ),
        actions: <Widget>[
          Stack(
            children: [
              IconButton(
                onPressed: () {},
                icon: const Icon(
                  CupertinoIcons.heart,
                  color: Colors.white,
                ),
              ),
              const Positioned(
                  right: 12,
                  top: 13,
                  child: CircleAvatar(
                    radius: 4,
                    backgroundColor: Colors.red,
                  ))
            ],
          ),
          Stack(
            children: [
              IconButton(
                onPressed: () {},
                icon: const FaIcon(FontAwesomeIcons.facebookMessenger),
                color: Colors.white,
              ),
              Positioned(
                right: 4,
                top: 2,
                child: Container(
                  padding: const EdgeInsets.all(4),
                  decoration: const BoxDecoration(
                      shape: BoxShape.circle, color: Colors.red),
                  // radius: 8,
                  // backgroundColor: Colors.red,
                  child: const Center(
                    child: Text(
                      "1",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              )
            ],
          )
        ],
      ),
      body: const Column(
        children: [
          StoryComponent(),
          PostComponent(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.black,
        type: BottomNavigationBarType.fixed,
        currentIndex: _selectedIndex,
        onTap: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(
              icon: SvgPicture.asset(
                _selectedIndex == 0
                    ? 'assets/icons/vectors/home-bold.svg'
                    : 'assets/icons/vectors/home-outline.svg',
                colorFilter:
                    const ColorFilter.mode(Colors.white, BlendMode.srcIn),
              ),
              label: ''),
          BottomNavigationBarItem(
              icon: SvgPicture.asset(
                'assets/icons/vectors/search-outline.svg',
                colorFilter:
                    const ColorFilter.mode(Colors.white, BlendMode.srcIn),
              ),
              label: ''),
          BottomNavigationBarItem(
              icon: SvgPicture.asset(
                _selectedIndex == 2
                    ? 'assets/icons/vectors/add-square-bold.svg'
                    : 'assets/icons/vectors/add-square-outline.svg',
                colorFilter:
                    const ColorFilter.mode(Colors.white, BlendMode.srcIn),
              ),
              label: ''),
          BottomNavigationBarItem(
              icon: SvgPicture.asset(
                _selectedIndex == 3
                    ? 'assets/icons/vectors/video-play-bold.svg'
                    : 'assets/icons/vectors/video-play-outline.svg',
                colorFilter:
                    const ColorFilter.mode(Colors.white, BlendMode.srcIn),
              ),
              label: ''),
          BottomNavigationBarItem(
              icon: Stack(
                children: [
                  Container(
                    height: 30,
                    width: 30,
                    decoration: const BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('assets/images/pink-floyd.png')),
                        shape: BoxShape.circle),
                  ),
                  const Positioned(
                      right: 12,
                      top: 30,
                      child: CircleAvatar(
                        radius: 3,
                        backgroundColor: Colors.red,
                      ))
                ],
              ),
              label: ''),
        ],
      ),
    );
  }
}
