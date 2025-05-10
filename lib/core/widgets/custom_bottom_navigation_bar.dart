import 'package:flutter/material.dart';
import 'package:tourism_app/generated/l10n.dart';

import '../../const.dart';
import '../../features/ai_chat/presentation/views/ai_chat_view.dart';
import '../../features/faviority/presentation/views/faviority_view.dart';
import '../../features/home/presentation/views/home_view.dart';
import '../../features/profile/presentation/views/profile_view.dart';

class CustomBottomNavigationBar extends StatefulWidget {
  const CustomBottomNavigationBar({super.key});

  @override
  CustomBottomNavigationBarState createState() =>
      CustomBottomNavigationBarState();
}

class CustomBottomNavigationBarState extends State<CustomBottomNavigationBar> {
  int _currentIndex = 0;

  final List<Widget> _pages = const [
    HomeView(), // Corrected the class name from HomeVIew to HomeView
    AiChatView(),
    FaviorityView(),
    ProfileView(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_currentIndex],
      bottomNavigationBar: Container(
        height: 60,
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(26),
            topRight: Radius.circular(26),
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 5,
              blurRadius: 7,
              offset: const Offset(0, 3),
            ),
          ],
        ),
        // child: ClipRRect(
        // borderRadius: const BorderRadius.only(
        //   topLeft: Radius.circular(16),
        //   topRight: Radius.circular(16),
        // ),
        child: BottomNavigationBar(
          elevation: 10,
          currentIndex: _currentIndex,
          onTap: (index) {
            setState(() {
              _currentIndex = index;
            });
          },
          showUnselectedLabels: false,
          showSelectedLabels: true,
          selectedItemColor: primaryColor, // Selected item color
          unselectedItemColor: Colors.grey, // Unselected item color
          backgroundColor:
              Colors.white, // Background color of the navigation bar
          type: BottomNavigationBarType.fixed, // Use fixed type for labels
          items: [
            BottomNavigationBarItem(
              icon: const Icon(Icons.home),
              label: S.of(context).BottomNavigationBarHome,
            ),
            BottomNavigationBarItem(
              icon: const Icon(Icons.smart_toy),
              label: S.of(context).BottomNavigationBarAi,
            ),
            BottomNavigationBarItem(
              icon: const Icon(Icons.favorite),
              label: S.of(context).BottomNavigationBarFaviority,
            ),
            BottomNavigationBarItem(
              icon: const Icon(Icons.settings),
              label: S.of(context).BottomNavigationBarSettings,
            ),
          ],
        ),
      ),
      // ),
    );
  }
}
