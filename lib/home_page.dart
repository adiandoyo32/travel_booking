import 'package:flutter/material.dart';
import 'package:travel_booking/models/place.dart';
import 'package:travel_booking/widgets/place_tab.dart';

import 'widgets/home_app_bar.dart';
import 'widgets/place_card.dart';
import 'widgets/popular_place_card.dart';
import 'widgets/search_filter_place.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(88),
        child: HomeAppBar(),
      ),
      bottomNavigationBar: MainNavigation(),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Discover \nNew Destination',
                    style: Theme.of(context).textTheme.headline5,
                  ),
                  SizedBox(height: 16),
                  SearchFilterPlace(),
                ],
              ),
            ),
            SizedBox(height: 8),
            PlaceTab(),
            Container(
              height: 280,
              child: ListView.builder(
                physics: BouncingScrollPhysics(),
                padding: EdgeInsets.symmetric(horizontal: 16),
                scrollDirection: Axis.horizontal,
                itemCount: placeList.length,
                itemBuilder: (context, index) {
                  return PlaceCard(place: placeList[index]);
                },
              ),
            ),
            SizedBox(height: 16),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24.0),
              child: Row(
                children: [
                  Text('Popular'),
                  Icon(Icons.arrow_drop_down),
                  Spacer(),
                  Text('View all'),
                ],
              ),
            ),
            Container(
              child: ListView.builder(
                shrinkWrap: true,
                physics: BouncingScrollPhysics(),
                padding: EdgeInsets.symmetric(horizontal: 24),
                itemCount: popularPlaceList.length,
                itemBuilder: (context, index) {
                  return PopularPlaceCard(place: popularPlaceList[index]);
                },
              ),
            ),
            SizedBox(height: 16),
          ],
        ),
      ),
    );
  }
}

class MainNavigation extends StatefulWidget {
  const MainNavigation({
    Key? key,
  }) : super(key: key);

  @override
  _MainNavigationState createState() => _MainNavigationState();
}

class _MainNavigationState extends State<MainNavigation> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      iconSize: 28,
      selectedItemColor: Colors.teal,
      unselectedItemColor: Colors.grey[400],
      showSelectedLabels: false,
      showUnselectedLabels: false,
      currentIndex: _selectedIndex,
      onTap: _onItemTapped,
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.home_filled),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.map_outlined),
          label: 'Map',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.bookmark_outline_rounded),
          label: 'Bookmark',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person_outline_rounded),
          label: 'Profile',
        ),
      ],
    );
  }
}
