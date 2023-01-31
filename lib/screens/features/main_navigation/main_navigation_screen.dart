import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:tiktok_clone/constants/sizes.dart';
import 'package:tiktok_clone/screens/features/main_navigation/stf_screen.dart';
import 'package:tiktok_clone/screens/features/main_navigation/widgets/nav_tab.dart';

class MainNavigationScreen extends StatefulWidget {
  const MainNavigationScreen({super.key});

  @override
  State<MainNavigationScreen> createState() => _MainNavigationScreenState();
}

class _MainNavigationScreenState extends State<MainNavigationScreen> {
  int _selectIndex = 0;

  void _onTap(int index) {
    setState(() {
      _selectIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Offstage(
            offstage: _selectIndex != 0,
            child: const StfScreen(),
          ),
          Offstage(
            offstage: _selectIndex != 1,
            child: const StfScreen(),
          ),
          Offstage(
            offstage: _selectIndex != 3,
            child: const StfScreen(),
          ),
          Offstage(
            offstage: _selectIndex != 4,
            child: const StfScreen(),
          ),
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.black,
        child: Padding(
          padding: const EdgeInsets.all(Sizes.size12),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              NavTab(
                text: 'Home',
                isSelected: _selectIndex == 0,
                icon: FontAwesomeIcons.house,
                selectIcon: FontAwesomeIcons.house,
                onTap: () => _onTap(0),
              ),
              NavTab(
                text: 'Discover',
                isSelected: _selectIndex == 1,
                icon: FontAwesomeIcons.compass,
                selectIcon: FontAwesomeIcons.solidCompass,
                onTap: () => _onTap(1),
              ),
              NavTab(
                text: 'Inbox',
                isSelected: _selectIndex == 3,
                icon: FontAwesomeIcons.message,
                selectIcon: FontAwesomeIcons.solidMessage,
                onTap: () => _onTap(3),
              ),
              NavTab(
                text: 'Profile',
                isSelected: _selectIndex == 4,
                icon: FontAwesomeIcons.user,
                selectIcon: FontAwesomeIcons.solidUser,
                onTap: () => _onTap(4),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
