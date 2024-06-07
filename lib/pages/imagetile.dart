import 'package:flutter/material.dart';

class SquareTile extends StatelessWidget {
  final String imagePath;
  const SquareTile({super.key, required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8.0), // Optional padding
      decoration: BoxDecoration(
          border: Border.all(
            color: Colors.white,
          ),
          shape: BoxShape.rectangle,
          color: Colors.grey[100],
          borderRadius: BorderRadius.circular(20) // Background color
          ),
      child: Image.asset(
        imagePath,
        height: MediaQuery.of(context).size.width * 0.17,
        width: MediaQuery.of(context).size.width * 0.17,
        // Ensures the image fits within the container
      ),
    );
  }
}
