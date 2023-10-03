import 'package:flutter/material.dart';
import 'package:houseapp/theme.dart';

class TipsCard extends StatelessWidget {
  final String title;
  final String imageUrl;
  final String updatedAt;
  const TipsCard({super.key, required this.title, required this.imageUrl, required this.updatedAt});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset(
          imageUrl,
          width: 80,
        ),
        const SizedBox(
          width: 16,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: blackTextStyle.copyWith(
                fontSize: 18,
              ),
            ),
            const SizedBox(
              height: 4,
            ),
            Text(
              'Updated $updatedAt',
              style: greyTextStyle,
            ),
          ],
        ),
        const Spacer(),
        IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.chevron_right,
            color: greyColor,
          ),
        ),
      ],
    );
  }
}