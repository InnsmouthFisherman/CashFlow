import 'package:flutter/material.dart';
import 'pages/feed.dart';
import 'pages/profile.dart';
import 'pages/settings.dart';
import 'pages/graphics.dart';

void main() => runApp(const NavigationBarApp());

class NavigationBarApp extends StatelessWidget {
  const NavigationBarApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(theme: ThemeData(
      colorScheme: ColorScheme.fromSeed(
        brightness: Brightness.dark,
        seedColor: const Color(0x293936),
        background: const Color(0x293936),
          ),
      ),
      debugShowCheckedModeBanner: false,
      home: const NavigationExample(),
    );
  }
}


class NavigationExample extends StatefulWidget {
  const NavigationExample({super.key});

  @override
  State<NavigationExample> createState() => _NavigationExampleState();
}

class _NavigationExampleState extends State<NavigationExample> {
  int currentPageIndex = 0;

  @override
  Widget build(BuildContext context) {
    // final ThemeData theme = Theme.of(context);
    return Scaffold(
      bottomNavigationBar: NavigationBar(
        onDestinationSelected: (int index) {
          setState(() {
            currentPageIndex = index;
          });
        },
        selectedIndex: currentPageIndex,
        destinations: const <Widget>[
          NavigationDestination(
            selectedIcon: Icon(Icons.account_circle),
            icon: Icon(Icons.account_circle_outlined),
            label: 'Профиль',
          ),
          NavigationDestination(
            selectedIcon: Badge(child: Icon(Icons.account_balance_wallet)),
            icon: Badge(child: Icon(Icons.account_balance_wallet_outlined)),
            label: 'История',
          ),
          NavigationDestination(
            selectedIcon: Icon(Icons.add_chart),
            icon: Icon(Icons.add_chart_outlined),
            label: 'Графики',
          ),
        ],
      ),
      body: <Widget>[
        /// Home page
        const Profile(),

        /// Notifications page
        const Feed(),

        /// Messages page
        const Settings(),

        /// Notifications page
        const Graphics(),
      ][currentPageIndex],
    );
  }
}
