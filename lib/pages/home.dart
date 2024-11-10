import 'package:climbing/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: MyColors.almostWhite,
      bottomNavigationBar: NavBar(),
      body: Center(
        child: Column (
          children: [
            Text("Work in progress", style: TextStyle(fontSize: 30, color: Colors.black)),
          ],
          )
        ),
    );
  }
}

class NavBar extends StatefulWidget {
  const NavBar({super.key});

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  int _selectedIndex = 0;
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
  
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
        // elevation: 0.0,
        items: const <BottomNavigationBarItem>[ //les icons sont bien moches
          BottomNavigationBarItem(
            icon: Icon(
              Icons.access_time,
              weight: 4,
            ),
            label: 'Climbing',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.fitness_center,
              ),
            label: 'Training',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.bar_chart_rounded,
              ),
            label: 'Stats',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.check_rounded,
            ),
            label: 'Assessments',
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,

        backgroundColor: Colors.white,
        unselectedItemColor: MyColors.lightBlack,
        unselectedFontSize: 15,
        selectedItemColor: MyColors.pink,
        selectedFontSize: 15,
        selectedLabelStyle: const TextStyle(letterSpacing: -0.32),
        showUnselectedLabels: true,
        type: BottomNavigationBarType.fixed,
        );
  }
}