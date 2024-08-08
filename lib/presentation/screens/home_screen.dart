import 'package:flutter/material.dart';
import 'package:flutter_floating_bottom_bar/flutter_floating_bottom_bar.dart';
import 'package:my_travel/core/constants/constants.dart';
import 'package:my_travel/presentation/widgets/widgets.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: BottomBar(
          barColor: Colors.white,
          borderRadius: BorderRadius.circular(20.0),
          hideOnScroll: true,
          offset: 20.0,
          child: const Padding(
            padding: EdgeInsets.all(10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                BottomBarItem(icon: Icons.house, isCurrent: true),
                BottomBarItem(icon: Icons.map, isCurrent: false),
                BottomBarItem(icon: Icons.calendar_today, isCurrent: false),
                BottomBarItem(icon: Icons.table_chart, isCurrent: false),
              ],
            ),
          ),
          body: (context, controller) => const SingleChildScrollView(
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
                      Icon(Icons.north_east,
                          size: 30.0, color: AppColors.yellow),
                    ],
                  ),
                  SizedBox(height: 20.0),
                  ServicesGrid(),
                  SizedBox(height: 40.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Upcoming departures',
                          style:
                              TextStyle(fontSize: 18.0, color: AppColors.grey)),
                      Row(
                        children: [
                          Text('View all', style: TextStyle(fontSize: 18.0)),
                          SizedBox(width: 10.0),
                          Icon(Icons.north_east,
                              size: 20.0, color: AppColors.yellow),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: 10.0),
                  Column(
                    children: [
                      FlightCard(
                        origin: 'Singapoure',
                        destination: 'San Francisco',
                        date: '27 Aug 2022 13:22',
                        gate: '1C',
                      ),
                      FlightCard(
                        origin: 'Singapoure',
                        destination: 'New York',
                        date: '27 Aug 2022 13:1',
                        gate: '2B',
                      ),
                      FlightCard(
                        origin: 'Singapoure',
                        destination: 'London',
                        date: '27 Aug 2022 14:25',
                        gate: '1A',
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
