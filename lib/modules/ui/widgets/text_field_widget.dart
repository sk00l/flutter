import 'package:flutter/material.dart';

class TextFieldWidget extends StatelessWidget {
  final String name;
  final FocusNode focusNode;
  final Widget destinationPage;
  // final TextEditingController controller;

  const TextFieldWidget(
      {Key? key,
      required this.destinationPage,
      // required this.controller,
      required this.focusNode,
      required this.name})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      // controller: controller,
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => destinationPage));
      },
      readOnly: true,
      focusNode: focusNode,
      decoration: InputDecoration(
          enabledBorder: const UnderlineInputBorder(
              borderSide: BorderSide(color: Colors.white)),
          focusedBorder: const UnderlineInputBorder(
              borderSide: BorderSide(color: Colors.white)),
          labelText: name,
          floatingLabelBehavior: FloatingLabelBehavior.always,
          labelStyle: TextStyle(
              color: focusNode.hasFocus ? Colors.white : Colors.white)),
    );
  }
}
