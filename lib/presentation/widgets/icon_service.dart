import 'package:flutter/material.dart';
import 'package:my_travel/core/constants/constants.dart';

class IconService extends StatelessWidget {
  final IconData icon;

  const IconService({super.key, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 35.0, vertical: 18.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(25.0),
      ),
      child: Icon(icon, color: AppColors.background, size: 50.0),
    );
  }
}
