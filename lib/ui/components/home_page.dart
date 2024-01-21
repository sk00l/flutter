import 'package:flutter/material.dart';
import 'package:app_1/ui/components/container_p1.dart';
import 'package:popover/popover.dart';
import 'package:app_1/ui/components/menu_items.dart';
import 'package:app_1/ui/components/carousel_img.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  MyHomePageState createState() => MyHomePageState();
}

class MyHomePageState extends State<MyHomePage> {
  void showBottomSheet() {
    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return Container(
          padding: const EdgeInsets.all(16.0),
          child: Wrap(
            alignment: WrapAlignment.center,
            children: [
              const SizedBox(height: 10),
              ListView(
                shrinkWrap: true,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        children: [
                          IconButton(
                            onPressed: () {},
                            icon: const Icon(Icons.library_music),
                          ),
                          const SizedBox(height: 5),
                          const Text('Library Music'),
                        ],
                      ),
                      Column(
                        children: [
                          IconButton(
                            onPressed: () {},
                            icon: const Icon(Icons.music_note_rounded),
                          ),
                          const SizedBox(height: 5),
                          const Text('Music Note'),
                        ],
                      ),
                      Column(
                        children: [
                          IconButton(
                            onPressed: () {},
                            icon: const Icon(Icons.navigation),
                          ),
                          const SizedBox(height: 5),
                          const Text('Navigation'),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(100.0),
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          margin: const EdgeInsets.only(top: 10.0),
          color: Colors.white,
          child: AppBar(
            toolbarHeight: 145,
            elevation: 0,
            leading: Container(
              margin: const EdgeInsets.only(left: 1.0),
              child: const CircleAvatar(
                radius: 25,
                backgroundColor: Colors.white,
                child: CircleAvatar(
                  radius: 23,
                  backgroundImage: NetworkImage(
                    'https://images.unsplash.com/photo-1615109398623-88346a601842?q=80&w=1000&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTZ8fG1hbnxlbnwwfHwwfHx8MA%3D%3D',
                  ),
                ),
              ),
            ),
            actions: <Widget>[
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.notifications),
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.search),
              ),
            ],
            title: const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Hi User,',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                    color: Colors.black,
                  ),
                ),
                Text(
                  'Good Morning!',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 14,
                    color: Colors.green,
                  ),
                ),
              ],
            ),
            bottom: const PreferredSize(
              preferredSize: Size.fromHeight(1000),
              child: SizedBox(
                height: 20,
                child: Padding(
                  padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Here's your top pick for Today.",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                        color: Colors.grey,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
      body: Container(
        margin: const EdgeInsets.only(bottom: 20.0),
        child: Column(
          children: [
            const SizedBox(height: 50),
            Center(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(15.0),
                child: ImageCarousel(
                  imageUrls: const [
                    'https://www.billboard.com/wp-content/uploads/media/pink-floyd-1973-billboard-650.jpg?w=650',
                    'https://static.independent.co.uk/2023/02/27/12/Pink%20Floyd%20Dark%20Side%20of%20the%20Moon%20comp.jpg'
                  ],
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                InkWell(
                  onTap: () => {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => const NewPage(),
                      ),
                    ),
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0.5),
                      borderRadius: BorderRadius.circular(10.0),
                      border: Border.all(),
                    ),
                    width: 170,
                    height: 150,
                    margin: const EdgeInsets.fromLTRB(8.0, 50.0, 8.0, 8.0),
                    child: const Center(
                      child: Text('Container 1'),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () => showPopover(
                    context: context,
                    bodyBuilder: (context) => MenuItems(),
                    width: 250,
                    height: 150,
                  ),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0.5),
                      borderRadius: BorderRadius.circular(10.0),
                      border: Border.all(),
                    ),
                    width: 170,
                    height: 150,
                    margin: const EdgeInsets.fromLTRB(8.0, 50.0, 8.0, 8.0),
                    child: const Center(
                      child: Text('Container 2'),
                    ),
                  ),
                ),
              ],
            ),
            Container(
              decoration: BoxDecoration(
                color: const Color.fromRGBO(211, 211, 211, 0.2),
                borderRadius: BorderRadius.circular(15.0),
              ),
              width: 350,
              height: 150,
              margin: const EdgeInsets.fromLTRB(8.0, 20.0, 8.0, 8.0),
              child: Stack(
                children: [
                  const Center(
                    child: Text('Container 3'),
                  ),
                  Positioned(
                    top: 5.0,
                    left: (350 - 30) / 2,
                    child: IconButton(
                      icon: const Icon(
                        Icons.arrow_upward,
                        size: 20.0,
                      ),
                      onPressed: showBottomSheet,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
