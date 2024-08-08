import 'package:flutter/material.dart';
import 'package:my_travel/core/constants/constants.dart';
import 'package:my_travel/presentation/widgets/widgets.dart';

class ServicesGrid extends StatelessWidget {
  const ServicesGrid({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            IconTextService(
              text: 'Transfer',
              icon: Icons.money,
              color: AppColors.yellow,
            ),
            IconService(icon: Icons.bed),
          ],
        ),
        SizedBox(height: 15.0),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            IconService(icon: Icons.work),
            IconTextService(
              text: 'Tickets',
              icon: Icons.airplane_ticket,
              color: AppColors.red,
            ),
          ],
        ),
        SizedBox(height: 15.0),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            IconTextService(
              text: 'Car Rent',
              icon: Icons.directions_car,
              color: AppColors.green,
            ),
            IconService(icon: Icons.mark_unread_chat_alt_rounded),
          ],
        )
      ],
    );
  }
}
