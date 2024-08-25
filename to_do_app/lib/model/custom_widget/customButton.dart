import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String text; // Variable for button text
  final Color backgroundColor; // Variable for background color
  final VoidCallback onPressed; // Callback function for button press

  const CustomButton({
    super.key,
    required this.text,
    required this.backgroundColor,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: backgroundColor, // Set the background color
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(14), // Border radius of 14
        ),
        padding: const EdgeInsets.symmetric(
            vertical: 15, horizontal: 20), // Button padding
      ),
      child: Text(
        text,
        style: const TextStyle(
            fontSize: 16, color: Colors.white), // Customize text style
      ),
    );
  }
}
