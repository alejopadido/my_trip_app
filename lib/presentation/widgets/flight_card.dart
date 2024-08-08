import 'package:flutter/material.dart';
import 'package:my_travel/core/constants/constants.dart';

const TextStyle subtitleStyle = TextStyle(color: AppColors.grey);

class FlightCard extends StatelessWidget {
  final String origin;
  final String destination;
  final String date;
  final String gate;

  const FlightCard(
      {super.key,
      required this.origin,
      required this.destination,
      required this.date,
      required this.gate});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          contentPadding: EdgeInsets.zero,
          title: Text(
            '$origin - $destination',
            style: const TextStyle(fontSize: 20.0),
          ),
          subtitle: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(date, style: subtitleStyle),
              Text('Gate $gate', style: subtitleStyle),
            ],
          ),
        ),
        const Divider(),
      ],
    );
  }
}
