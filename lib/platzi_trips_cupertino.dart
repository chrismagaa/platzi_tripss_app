import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'home_trips.dart';
import 'search/search_trips.dart';
import 'profile/profile_trips.dart';


class PlatziTripsCupertino extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
        bottomNavigationBar: CupertinoTabScaffold(
          backgroundColor: Colors.transparent,
        tabBar: CupertinoTabBar(
          activeColor: Colors.indigo,
          backgroundColor: Colors.transparent,
          items: [
                    BottomNavigationBarItem(
                    icon: Icon(Icons.home)
                   ),
                    BottomNavigationBarItem(
                    icon: Icon(Icons.search),
                    ),
                    BottomNavigationBarItem(
                    icon: Icon(Icons.person),
                    ),
              ]
      ),
          tabBuilder: (BuildContext contex, int index){
            switch (index) {
              case 0:
                return CupertinoTabView(
                  builder: (BuildContext context) => HomeTrips(),
                );
              case 1:
                return CupertinoTabView(
                  builder: (BuildContext context) => SearchTrips(),
                );
              case 2:
                return CupertinoTabView(
                  builder: (BuildContext context) => ProfileTrips(),
                );
              default:
                return CupertinoTabView(
                  builder: (BuildContext context) => HomeTrips(),
                );
            }
          },

    )
    );
  }
}