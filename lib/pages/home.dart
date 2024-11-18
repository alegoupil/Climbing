import 'package:climbing/main.dart';
import 'package:flutter/material.dart';
import 'package:climbing/pages/climbing.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  static final List<Widget> _pages = <Widget>[
    const ClimbingPage(),
    Container(height: 2000, width: 2000, color: Colors.red, child: const Center(child: Text('Work in progress', style: TextStyle(fontSize: 40, fontWeight: FontWeight.w600)))),
    Container(height: 2000, width: 2000, color: Colors.green, child: const Center(child: Text('Work in progress', style: TextStyle(fontSize: 40, fontWeight: FontWeight.w600)))),
    Container(height: 2000, width: 2000, color: Colors.yellow, child: const Center(child: Text('Work in progress', style: TextStyle(fontSize: 40, fontWeight: FontWeight.w600)))),
  ];

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.almostWhite,
      bottomNavigationBar: NavBar(
        selectedIndex: _selectedIndex,
        onItemTapped: _onItemTapped,
      ),
      body: Center(
        child: HomePage._pages.elementAt(_selectedIndex),
      ),
    );
  }
}

class NavBar extends StatelessWidget {
  final int selectedIndex;
  final ValueChanged<int> onItemTapped;

  const NavBar({
    required this.selectedIndex,
    required this.onItemTapped,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 75,
      child: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              'assets/icons/climbing.svg',
              colorFilter: ColorFilter.mode(
                selectedIndex == 0 ? MyColors.pink : MyColors.lightBlack,
                BlendMode.srcIn,
              ),
            ),
            label: 'Climbing',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              'assets/icons/training.svg',
              colorFilter: ColorFilter.mode(
                selectedIndex == 1 ? MyColors.pink : MyColors.lightBlack,
                BlendMode.srcIn,
              ),
            ),
            label: 'Training',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              'assets/icons/stats.svg',
              colorFilter: ColorFilter.mode(
                selectedIndex == 2 ? MyColors.pink : MyColors.lightBlack,
                BlendMode.srcIn,
              ),
            ),
            label: 'Stats',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              'assets/icons/assessments.svg',
              colorFilter: ColorFilter.mode(
                selectedIndex == 3 ? MyColors.pink : MyColors.lightBlack,
                BlendMode.srcIn,
              ),
            ),
            label: 'Assessments',
          ),
        ],
        currentIndex: selectedIndex,
        onTap: onItemTapped,
        backgroundColor: Colors.white,
        unselectedItemColor: MyColors.lightBlack,
        unselectedFontSize: 15,
        selectedItemColor: MyColors.pink,
        selectedFontSize: 15,
        selectedLabelStyle: const TextStyle(letterSpacing: -0.32),
        showUnselectedLabels: true,
        type: BottomNavigationBarType.fixed,
      ),
    );
  }
}