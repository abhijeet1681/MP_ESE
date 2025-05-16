import 'package:flutter/material.dart';
import 'tabs/bedsheets_tab.dart';
import 'tabs/towel_sofa_tab.dart';
import 'tabs/profile_tab.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(110),
          child: AppBar(
            flexibleSpace: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [Colors.deepPurple, Colors.purple],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
              ),
            ),
            title: Padding(
              padding: const EdgeInsets.only(top: 13.0),
              child: Row(
                children: [
                  Icon(Icons.storefront, color: Colors.white),
                  SizedBox(width: 10),
                  Text(
                    'Space - Home Decoration',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                ],
              ),
            ),
            bottom: TabBar(
              labelColor: Colors.white,
              unselectedLabelColor: Colors.white70,
              indicatorColor: Colors.white,
              tabs: [
                Tab(icon: Icon(Icons.bed), text: 'Bedsheets'),
                Tab(icon: Icon(Icons.bathtub), text: 'Towels & Sofa'),
                Tab(icon: Icon(Icons.person), text: 'Profile'),
              ],
            ),
          ),
        ),
        body: TabBarView(
          children: [
            BedsheetsTab(),
            TowelSofaTab(),
            ProfileTab(),
          ],
        ),
      ),
    );
  }
}
