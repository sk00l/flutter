import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class TextBoxWidget extends StatelessWidget {
  final String title;
  const TextBoxWidget({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Align(
            alignment: Alignment.topLeft,
            child: Text(title),
          ),
          const SizedBox(height: 4),
          TextField(
            decoration: InputDecoration(
              hintText: '0.00',
              isDense: true,
              contentPadding: const EdgeInsets.all(8),
              suffixIcon: Transform.translate(
                offset: const Offset(16, 16),
                child: FaIcon(
                  FontAwesomeIcons.dollarSign,
                  color: Colors.green[800],
                  size: 16,
                ),
              ),
              enabledBorder: const OutlineInputBorder(
                borderSide: BorderSide(
                  width: 0.2,
                ),
              ),
              focusedBorder: const OutlineInputBorder(
                borderSide: BorderSide(
                  style: BorderStyle.solid,
                  color: Colors.green,
                  width: 1,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
