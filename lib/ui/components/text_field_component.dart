// text_field_component.dart
import 'package:assignment7/ui/widget/text_box_widget.dart';
import 'package:flutter/material.dart';

class TextFieldComponent extends StatelessWidget {
  final List<String> textBoxTitles;

  const TextFieldComponent({Key? key, required this.textBoxTitles})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: textBoxTitles.length,
      itemBuilder: (context, index) {
        return TextBoxWidget(
          title: textBoxTitles[index],
          index: index,
        );
      },
    );
  }
}
