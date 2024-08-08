import 'package:flutter/material.dart';
import 'package:my_travel/core/constants/constants.dart';

class BottomBarItem extends StatelessWidget {
  final IconData icon;
  final bool isCurrent;
  const BottomBarItem({super.key, required this.icon, required this.isCurrent});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8.0),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15.0),
          color: isCurrent ? AppColors.yellow : Colors.transparent),
      child: Icon(
        icon,
        color: AppColors.background,
        size: 35.0,
      ),
    );
  }
}
