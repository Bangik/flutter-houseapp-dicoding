import 'package:flutter/material.dart';
import 'package:houseapp/theme.dart';
import 'package:houseapp/model/space.dart';
import 'package:houseapp/widgets/space_card.dart';

class FavoritePage extends StatelessWidget {
  const FavoritePage({super.key});

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
                'Favorite',
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
                'List of my favorite house',
                style: greyTextStyle.copyWith(
                  fontSize: 16,
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: edge),
              child: Column(
                children: [
                  for(var i = 0; i < spaces.length; i++)
                    Padding(
                      padding: const EdgeInsets.only(bottom: 30), 
                      child: SpaceCard(spaces: spaces[i])
                    ),
                ],
              ),
            ),
          ]
        )
      )
    );
  }
}
