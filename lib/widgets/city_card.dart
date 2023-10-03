import 'package:flutter/material.dart';
import 'package:houseapp/theme.dart';

class CityCard extends StatelessWidget {
  final String cityName;
  final String imageUrl;
  final bool isPopular;
  const CityCard({super.key, required this.cityName, required this.imageUrl, this.isPopular = false});
  
  
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(18),
      child: Container(
        height: 150,
        width: 120,
        color: const Color(0xffF6F7F8),
        child: Column(
          children: [
            Stack(
              children: [
                Image.asset(
                  imageUrl,
                  width: 120,
                  height: 102,
                  fit: BoxFit.cover,
                ),
                if (isPopular) Align(
                  alignment: Alignment.topRight,
                  child: Container(
                    width: 50,
                    height: 30,
                    decoration: BoxDecoration(
                      color: purpleColor,
                      borderRadius: const BorderRadius.only(
                        bottomLeft: Radius.circular(36),
                      ),
                    ),
                    child: Center(
                      child: Image.asset(
                        'assets/icon_star.png',
                        width: 22,
                        height: 22,
                      ),
                    ),
                  ),
                ) else Container()
              ],
            ),
            const SizedBox(
              height: 11,
            ),
            Text(
              cityName,
              style: blackTextStyle.copyWith(
                fontSize: 16,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
