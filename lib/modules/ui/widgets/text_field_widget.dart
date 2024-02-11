import 'package:flutter/material.dart';

class TextFieldWidget extends StatelessWidget {
  final String name;
  final FocusNode focusNode;
  // final Widget destinationPage;
  final String value;
  final VoidCallback onTap;
  // final TextEditingController controller;

  const TextFieldWidget(
      {Key? key,
      // required this.destinationPage,
      // required this.controller,
      required this.onTap,
      required this.focusNode,
      required this.name,
      this.value = ''})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      style: const TextStyle(color: Colors.white),
      // controller: controller,
      // onTap: () {
      //   Navigator.push(
      //       context, MaterialPageRoute(builder: (context) => destinationPage));
      // },
      onTap: onTap,
      readOnly: true,
      focusNode: focusNode,
      decoration: InputDecoration(
        enabledBorder: const UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.white)),
        focusedBorder: const UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.white)),
        labelText: name,
        floatingLabelBehavior: FloatingLabelBehavior.always,
        labelStyle:
            TextStyle(color: focusNode.hasFocus ? Colors.white : Colors.white),
      ),
      // initialValue: value,
      controller: TextEditingController()..text = value,
    );
  }
}
