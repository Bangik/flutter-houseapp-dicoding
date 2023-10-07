import 'package:flutter/material.dart';
import 'package:houseapp/theme.dart';
import 'package:houseapp/widgets/tabbar.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Column(
          children: [
            Container(
              padding: EdgeInsets.symmetric(horizontal: edge),
              height: 220,
              margin: EdgeInsets.only(bottom: edge),
              width: double.infinity,
              color: whiteColor,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 110,
                    height: 110,
                    margin: const EdgeInsets.only(bottom: 16),
                    padding: const EdgeInsets.all(10),
                    decoration: const BoxDecoration(
                      image: DecorationImage(image: AssetImage('assets/photo_border.png'))
                    ),
                    child: Container(
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                          image:
                            AssetImage('assets/photo.png'),
                            fit: BoxFit.cover
                        )
                      ),
                    ),
                  ),
                  Text(
                    'Rizky',
                    style: blackTextStyle.copyWith(
                      fontSize: 18,
                    ),
                  ),
                  Text(
                    'rizky@gmail.com',
                    style: greyTextStyle.copyWith(
                      fontSize: 16,
                    ),
                  ),
                ],
              )
            ),
            Container(
              width: double.infinity,
              color: Colors.white,
              child: Column(
                children: [
                  CustomTabBar(
                    titles: const ["Account", "HouseApp"],
                    selectedIndex: selectedIndex,
                    onTap: (index) {
                      setState(() {
                        selectedIndex = index;
                      });
                    },
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  Column(
                    children: ((selectedIndex == 0) ?
                      [
                        'Edit Profile',
                        'Home Address',
                        'Security',
                        'Payment'
                      ] : [
                        'Rate App',
                        'Help Center',
                        'Privacy & Policy',
                        'Term & Condition'
                      ]
                    ).map((e) => Padding(
                      padding: EdgeInsets.only(
                          bottom: 16,
                          left: edge,
                          right: edge
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(e,style: blackTextStyle),
                          SizedBox(
                            height: 24,
                            width: 24,
                            child: IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.chevron_right,
                                color: greyColor,
                              ),
                            ),
                          )
                        ],
                      ),
                    )).toList(),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 100 + edge,
            ),
          ],
        )
      ]
    );
  }
}
