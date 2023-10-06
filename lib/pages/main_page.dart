import 'package:flutter/material.dart';
import 'package:houseapp/pages/favorite_page.dart';
import 'package:houseapp/pages/message_page.dart';
import 'package:houseapp/pages/profile_page.dart';
import 'package:houseapp/pages/home_page.dart';
import 'package:houseapp/theme.dart';
import 'package:houseapp/widgets/bottom_navbar.dart';

class MainPage extends StatefulWidget {
  final int initialPage;

  const MainPage({super.key, this.initialPage = 0});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int selectedPage = 0;
  PageController pageController = PageController(initialPage: 0);

  @override
  void initState() {
    super.initState();
    selectedPage = widget.initialPage;
    pageController = PageController(initialPage: widget.initialPage);
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      body: SafeArea(
        bottom: false,
        child: PageView(
          controller: pageController,
          onPageChanged: (index) {
            setState(() {
              selectedPage = index;
            });
          },
          children: const [
            HomePage(),
            MessagePage(),
            FavoritePage(),
            ProfilePage(),
          ],
        ),
      ),
      floatingActionButton: BottomNavBar(
        selectedIndex: selectedPage,
        onTap: (index) {
          setState(() {
            selectedPage = index;
          });
          pageController.jumpToPage(selectedPage);
        },
      )
    );
  }
}