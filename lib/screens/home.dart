import 'dart:collection';

import 'package:flutter/material.dart';
import '../models/constants.dart';
import 'package:carousel_slider/carousel_slider.dart';

import './homescreen.dart';
import './explore.dart';
import './profile.dart';

class Home extends StatefulWidget {
	@override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
	int _currentIndex = 0;

	final List<Widget> _screens = [
		HomeScreen(),	
		ExploreScreen(),
		ProfileScreen()
	];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(primarySwatch: Colors.grey),
        home: Scaffold(
            backgroundColor: Colors.grey.shade100,
						body: _screens.elementAt(_currentIndex),
						bottomNavigationBar: BottomNavigationBar(
							currentIndex: _currentIndex,
							onTap: onTabTapped,
							items: [
								BottomNavigationBarItem(
									icon: Icon(Icons.home),
									label:"Home"	
								),
								BottomNavigationBarItem(
									icon: Icon(Icons.search),
									label: "Explorar"
								),
								BottomNavigationBarItem(
									icon: Icon(Icons.person),
									label: "Conta"
								),
							],
						),
					)
			);
	}
	void onTabTapped(int index) {
		setState(() {
			_currentIndex = index;
		});
	}
}
