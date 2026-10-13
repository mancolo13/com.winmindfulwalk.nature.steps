import 'package:flutter/material.dart';
import '../theme/app_theme.dart';
import 'tabs/tab1_screen.dart';
import 'tabs/tab2_screen.dart';
import 'tabs/tab3_screen.dart';
import 'tabs/tab4_screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _currentIndex = 0;

  final List<Widget> _screens = const [
    Tab1Screen(),
    Tab2Screen(),
    Tab3Screen(),
    Tab4Screen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_currentIndex],
      bottomNavigationBar: NavigationBar(
        selectedIndex: _currentIndex,
        onDestinationSelected: (index) => setState(() => _currentIndex = index),
        backgroundColor: AppTheme.surfaceColor,
        indicatorColor: AppTheme.primaryColor.withValues(alpha: 0.2),
        destinations: [
        NavigationDestination(
          icon: const Icon(Icons.directions_walk_outlined),
          selectedIcon: const Icon(Icons.directions_walk, color: AppTheme.primaryColor),
          label: 'Walk',
        ),
        NavigationDestination(
          icon: const Icon(Icons.headphones_outlined),
          selectedIcon: const Icon(Icons.headphones, color: AppTheme.primaryColor),
          label: 'Sessions',
        ),
        NavigationDestination(
          icon: const Icon(Icons.park_outlined),
          selectedIcon: const Icon(Icons.park, color: AppTheme.primaryColor),
          label: 'Nature',
        ),
        NavigationDestination(
          icon: const Icon(Icons.insights_outlined),
          selectedIcon: const Icon(Icons.insights, color: AppTheme.primaryColor),
          label: 'Stats',
        ),

        ],
      ),
    );
  }
}
