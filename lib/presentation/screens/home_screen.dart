import 'package:flutter/material.dart';
import 'package:my_travel/core/constants/constants.dart';
import 'package:my_travel/presentation/widgets/widgets.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(25.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Good afternoon!',
                style: TextStyle(fontSize: 20.0, color: AppColors.grey),
              ),
              SizedBox(height: 10.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Airport map', style: TextStyle(fontSize: 35.0)),
                  Icon(Icons.north_east, size: 30.0, color: AppColors.yellow),
                ],
              ),
              SizedBox(height: 20.0),
              ServicesGrid(),
            ],
          ),
        ),
      ),
    );
  }
}
