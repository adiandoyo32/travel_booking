import 'package:flutter/material.dart';

class PlaceTab extends StatefulWidget {
  const PlaceTab({Key? key}) : super(key: key);

  @override
  _PlaceTabState createState() => _PlaceTabState();
}

class _PlaceTabState extends State<PlaceTab>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  final List<Tab> _tabs = <Tab>[
    Tab(child: Text('All')),
    Tab(child: Text('Beach')),
    Tab(child: Text('Mountain')),
    Tab(child: Text('Temple')),
    Tab(child: Text('City')),
    Tab(child: Text('Village')),
    Tab(child: Text('Forest')),
  ];

  @override
  void initState() {
    super.initState();
    _tabController = TabController(vsync: this, length: _tabs.length);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24.0),
      child: TabBar(
        physics: BouncingScrollPhysics(),
        controller: _tabController,
        isScrollable: true,
        indicatorColor: Colors.transparent,
        unselectedLabelColor: Colors.grey[500],
        labelColor: Colors.teal,
        tabs: _tabs,
      ),
    );
  }
}
