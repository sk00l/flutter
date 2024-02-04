import 'package:flutter/material.dart';

Widget buildProfileButton(BuildContext context, bool isEnabled) {
  return Container(
    decoration: BoxDecoration(
      color: isEnabled ? const Color(0xff45A621) : Colors.grey,
      borderRadius: BorderRadius.circular(4),
    ),
    height: 48,
    child: Center(
      child: TextButton(
        onPressed: isEnabled ? () {} : null,
        child: const Text(
          "Add Donation Received",
          style: TextStyle(fontSize: 14, color: Colors.white),
        ),
      ),
    ),
  );
}
