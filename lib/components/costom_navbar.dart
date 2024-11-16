import 'package:flutter/material.dart';

class CustomNavBar extends StatelessWidget {
  const CustomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Column(children: [
        Container(
          height: 60,
          decoration: BoxDecoration(
            color: Color(0xfffbede7),
            borderRadius: BorderRadius.all(
              Radius.circular(10),
            ),
          ),
          child: Padding(
            padding: EdgeInsets.all(5), // tab bar outside padding
            child: TabBar(
              indicator: BoxDecoration(
                color: Color(0xfff86320),
                borderRadius: BorderRadius.circular(10),
              ),

              indicatorSize: TabBarIndicatorSize.tab, // full width of the tab
              dividerColor:
                  Colors.transparent, // divider between tabBar and tabBariew
              labelColor: Colors.white,
              unselectedLabelColor: Color(0xfff86320),
              tabs: const [
                Tab(text: 'Chat'),
                Tab(text: 'Status'),
                Tab(text: 'Calls'),
              ],
            ),
          ),
        ),
        // const SizedBox(height: 20), // space between content
        Flexible(
          child: TabBarView(
            children: [
              Center(child: Text('Status Page')),
              Center(child: Text('Chat Page')),
              Center(child: Text('Calls Page')),
            ],
          ),
        ),
      ]),
    );
  }
}
