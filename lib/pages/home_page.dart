import 'package:flutter/material.dart';
import 'package:houseapp/theme.dart';
import 'package:houseapp/widgets/bottom_navbar_item.dart';
import 'package:houseapp/widgets/city_card.dart';
import 'package:houseapp/widgets/space_card.dart';
import 'package:houseapp/widgets/tips_card.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      body: SafeArea(
        bottom: false,
        child: ListView(
          children: [
            SizedBox(
              height: edge,
            ),
            Padding(
              padding: EdgeInsets.only(left: edge),
              child: Text(
                'Explore Now',
                style: blackTextStyle.copyWith(
                  fontSize: 24,
                ),
              ),
            ),
            const SizedBox(
              height: 2,
            ),
            Padding(
              padding: EdgeInsets.only(left: edge),
              child: Text(
                'Mencari kosan yang cozy',
                style: greyTextStyle.copyWith(
                  fontSize: 16,
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Padding(
              padding: EdgeInsets.only(left: edge),
              child: Text(
                'Popular Cities',
                style: regularTextStyle.copyWith(
                  fontSize: 16,
                ),
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            SizedBox(
              height: 150,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: const [
                  SizedBox(
                    width: 24,
                  ),
                  CityCard(
                    cityName: 'Jakarta',
                    imageUrl: 'assets/city1.png',
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  CityCard(
                    cityName: 'Bandung',
                    imageUrl: 'assets/city2.png',
                    isPopular: true,
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  CityCard(
                    cityName: 'Surabaya',
                    imageUrl: 'assets/city3.png',
                  ),
                  CityCard(
                    cityName: 'Palembang',
                    imageUrl: 'assets/city4.png',
                  ),
                  CityCard(
                    cityName: 'Aceh',
                    imageUrl: 'assets/city5.png',
                  ),
                  CityCard(
                    cityName: 'Bogor',
                    imageUrl: 'assets/city6.png',
                  ),
                  SizedBox(
                    width: 24,
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Padding(
              padding: EdgeInsets.only(left: edge),
              child: Text(
                'Recommended Space',
                style: regularTextStyle.copyWith(
                  fontSize: 16,
                ),
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: edge),
              child: const Column(
                children: [
                  SpaceCard(),
                  SizedBox(
                    height: 30,
                  ),
                  SpaceCard(),
                  SizedBox(
                    height: 30,
                  ),
                  SpaceCard(),
                  SizedBox(
                    height: 30,
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Padding(
              padding: EdgeInsets.only(left: edge),
              child: Text(
                'Tips & Guidance',
                style: regularTextStyle.copyWith(
                  fontSize: 16,
                ),
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: edge),
              child: const Column(
                children: [
                  TipsCard(
                    title: 'City Guidelines',
                    imageUrl: 'assets/tips1.png',
                    updatedAt: '20 Apr',
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  TipsCard(
                    title: 'Jakarta Fairship',
                    imageUrl: 'assets/tips2.png',
                    updatedAt: '11 Dec',
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 100 + edge,
            ),
          ],
        ),
      ),
      floatingActionButton: Container(
        height: 65,
        width: MediaQuery.of(context).size.width - (2 * edge),
        margin: EdgeInsets.symmetric(horizontal: edge),
        decoration: BoxDecoration(
          color: const Color(0xffF6F7F8),
          borderRadius: BorderRadius.circular(23),
        ),
        child: const Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            BottomNavbarItem(
              imageUrl: 'assets/icon_home.png',
              isActive: true,
            ),
            BottomNavbarItem(
              imageUrl: 'assets/icon_email.png',
              isActive: false,
            ),
            BottomNavbarItem(
              imageUrl: 'assets/icon_card.png',
              isActive: false,
            ),
            BottomNavbarItem(
              imageUrl: 'assets/icon_love.png',
              isActive: false,
            ),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
