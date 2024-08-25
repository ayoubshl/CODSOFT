import 'package:flutter/material.dart';

class LabeledTextField extends StatelessWidget {
  final String label;
  final String hint;
  final TextEditingController? controller;
  final bool isReadOnly;
  final VoidCallback? onTap;
  final EdgeInsetsGeometry padding;
  final EdgeInsetsGeometry margin;
  final Icon? suffixIcon;

  const LabeledTextField({
    super.key,
    required this.label,
    required this.hint,
    this.controller,
    this.isReadOnly = false,
    this.onTap,
    this.padding = const EdgeInsets.symmetric(vertical: 6.0),
    this.margin = const EdgeInsets.symmetric(
      horizontal: 16.0,
    ),
    this.suffixIcon,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: margin,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 8),
          Padding(
            padding: padding,
            child: Text(
              label,
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w500,
                color: Color.fromARGB(255, 0, 0, 0),
              ),
            ),
          ),
          const SizedBox(height: 8),
          TextField(
            cursorColor: Colors.white,
            controller: controller,
            readOnly: isReadOnly,
            onTap: onTap,
            decoration: InputDecoration(
              hintText: hint,
              hintStyle:
                  const TextStyle(color: Color.fromARGB(255, 255, 255, 255)),
              filled: true,
              fillColor: Colors.teal,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
                borderSide: BorderSide.none,
              ),
              contentPadding: const EdgeInsets.symmetric(
                vertical: 15,
                horizontal: 10,
              ),
              suffixIcon: suffixIcon, // Display icon only if provided
            ),
            style: const TextStyle(color: Colors.white),
          ),
        ],
      ),
    );
  }
}
