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
      textTheme: const TextTheme(
        bodyMedium: TextStyle(
          fontFamily: 'Kurale',
        )
      ),
      colorScheme: ColorScheme.fromSeed(
        brightness: Brightness.dark,
        seedColor: const Color(0x00E6DCCE),
        background: const Color(0x00E6DCCE),
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
  String title = '';
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF293936),
        title: Center(child: Text(title,)),
        ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: onTabTapped,
        currentIndex: currentPageIndex,
        //selectedItemColor: Theme.of(context).primaryColor,
          backgroundColor: const Color(0xFF293936),
        //type: BottomNavigationBarType.fixed,
        
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.storage),
            label: 'Профиль',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.timer),
            label: 'История',
          ),
          BottomNavigationBarItem(
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

   void onTabTapped(int index) {
     setState(() {
     currentPageIndex = index;
      switch(index) { 
       case 0: { title = 'Профиль'; } 
       break; 
       case 1: { title = 'История'; } 
       break;
       case 2: { title = 'Графики'; } 
       break;
      } 
     });
   }
}
