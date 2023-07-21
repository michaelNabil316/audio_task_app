import 'package:cet_e_services/View/home/home_screen.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import '../more/more_screen.dart';

class TabsScreen extends StatefulWidget {
  const TabsScreen({super.key});

  @override
  State<TabsScreen> createState() => _TabsScreenState();
}

class _TabsScreenState extends State<TabsScreen> with TickerProviderStateMixin {
  late final TabController tabController;

  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("task app"),
      ),
      body: TabBarView(
        controller: tabController,
        children: [
          HomeScreen(),
          MoreScreen(),
        ],
      ),
      bottomNavigationBar: TabBar(
        controller: tabController,
        dividerColor: Colors.blue,
        indicatorColor: Colors.blue,
        labelColor: Colors.blue,
        unselectedLabelColor: Colors.grey,
        tabs: <Widget>[
          Tab(
            text: 'Home',
            icon: Icon(Icons.home),
          ),
          Tab(
            text: 'more',
            icon: Icon(Icons.more),
          ),
        ],
      ),
    );
  }
}
