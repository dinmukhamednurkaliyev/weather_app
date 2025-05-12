import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return HomeView();
  }
}

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  int _currentPageIndex = 0;
  final _destinations = const [
    NavigationDestination(
      icon: Icon(Icons.home_outlined),
      selectedIcon: Icon(Icons.home),
      label: 'Home',
    ),
    NavigationDestination(
      icon: Icon(Icons.search_outlined),
      selectedIcon: Icon(Icons.search),
      label: 'Search',
    ),
    NavigationDestination(
      icon: Icon(Icons.wb_sunny_outlined),
      selectedIcon: Icon(Icons.wb_sunny),
      label: 'Weather',
    ),
    NavigationDestination(
      icon: Icon(Icons.settings_outlined),
      selectedIcon: Icon(Icons.settings),
      label: 'Settings',
    ),
  ];

  final _screens = [
    const Center(child: Text('Home Page')),
    const Center(child: Text('Search Page')),
    const Center(child: Text('Weather Page')),
    const Center(child: Text('Settings Page')),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Home Screen')),
      body: _screens[_currentPageIndex],
      bottomNavigationBar: NavigationBar(
        destinations: _destinations,
        labelBehavior: NavigationDestinationLabelBehavior.alwaysHide,
        selectedIndex: _currentPageIndex,
        indicatorColor: Colors.transparent,
        onDestinationSelected: (index) {
          setState(() {
            _currentPageIndex = index;
          });
        },
      ),
    );
  }
}
