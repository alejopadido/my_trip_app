import 'package:flutter/material.dart';
import 'package:my_travel/core/constants/constants.dart';

class IconTextService extends StatelessWidget {
  final IconData icon;
  final String text;
  final Color color;

  const IconTextService(
      {super.key, required this.text, required this.icon, required this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(25.0),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(25.0),
      ),
      child: Row(
        children: [
          Icon(icon, color: AppColors.background, size: 45.0),
          const SizedBox(width: 15.0),
          Text(text,
              style: const TextStyle(
                  color: AppColors.background,
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold)),
        ],
      ),
    );
  }
}
