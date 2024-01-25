import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BottomNavigationBaar extends StatefulWidget {
  const BottomNavigationBaar({super.key});

  @override
  State<BottomNavigationBaar> createState() => _BottomNavigationBaarState();
}

class _BottomNavigationBaarState extends State<BottomNavigationBaar> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
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
              icon: Container(
                height: 30,
                width: 30,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/images/pink-floyd.png')),
                    shape: BoxShape.circle),
              ),
              label: ''),
        ],
      ),
    );
  }
}