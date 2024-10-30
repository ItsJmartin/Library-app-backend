import 'package:flutter/material.dart';

class CostomWidget extends StatelessWidget {
  const CostomWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          title: Container(
            padding: const EdgeInsets.all(8.0),
            decoration: BoxDecoration(
              color: Colors.orange.shade50,
              borderRadius: BorderRadius.circular(30.0),
            ),
            child: TabBar(
              indicator: BoxDecoration(
                color: Colors.orange,
                borderRadius: BorderRadius.circular(30.0),
              ),
              labelColor: Colors.white,
              unselectedLabelColor: Colors.orange,
              tabs: const [
                Tab(text: 'Chat'),
                Tab(text: 'Status'),
                Tab(text: 'Calls'),
              ],
            ),
          ),
        ),
        body: const TabBarView(
          children: [
            Center(child: Text('Chat Page')),
            Center(child: Text('Status Page')),
            Center(child: Text('Calls Page')),
          ],
        ),
      ),
    );
  }
}