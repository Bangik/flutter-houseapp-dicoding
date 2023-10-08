import 'package:flutter/material.dart';
import 'package:houseapp/widgets/bottom_navbar_item.dart';

class BottomNavBar extends StatelessWidget {
  final int selectedIndex;
  final Function(int index) onTap;

  const BottomNavBar({super.key, this.selectedIndex = 0, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 65,
      width: MediaQuery.of(context).size.width - (2 * 24),
      margin: const EdgeInsets.symmetric(
        horizontal: 24,
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(23),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          GestureDetector(
            onTap: () {
              onTap(0);
            },
            child: BottomNavbarItem(
              imageUrl: 'assets/icon_home${selectedIndex == 0 ? '_active.png' : '.png'}',
              isActive: selectedIndex == 0,
            ),
          ),
          GestureDetector(
            onTap: () {
              onTap(1);
            },
            child: BottomNavbarItem(
              imageUrl: 'assets/icon_email${selectedIndex == 1 ? '_active.png' : '.png'}',
              isActive: selectedIndex == 1,
            ),
          ),
          GestureDetector(
            onTap: () {
              onTap(2);
            },
            child: BottomNavbarItem(
              imageUrl: 'assets/icon_love${selectedIndex == 2 ? '_active.png' : '.png'}',
              isActive: selectedIndex == 2,
            ),
          ),
          GestureDetector(
            onTap: () {
              onTap(3);
            },
            child: BottomNavbarItem(
              imageUrl: 'assets/profile${selectedIndex == 3 ? '_active.png' : '.png'}',
              isActive: selectedIndex == 3,
            ),
          ),
        ],
      ),
    );
  }
}