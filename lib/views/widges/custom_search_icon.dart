import 'package:flutter/material.dart';

class CustomSerchIcon extends StatelessWidget {
  const CustomSerchIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 45,
      height: 45,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: Colors.white.withOpacity(0.07),
      ),
      child: const Center(child: Icon(Icons.search, size: 28)),
    );
  }
}
