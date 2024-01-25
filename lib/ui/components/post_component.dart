import 'package:flutter/material.dart';

class PostComponent extends StatefulWidget {
  const PostComponent({super.key});

  @override
  State<PostComponent> createState() => _PostComponentState();
}

class _PostComponentState extends State<PostComponent> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 12),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.6399,
          child: ListView.builder(
            itemCount: 100,
            itemBuilder: (context, index) {
              return Container(
                height: 535,
                margin: const EdgeInsets.only(bottom: 30),
                color: Colors.green,
              );
            },
          ),
        )
      ],
    );
  }
}
