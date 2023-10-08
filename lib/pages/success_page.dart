import 'package:flutter/material.dart';
import 'package:houseapp/pages/main_page.dart';
import 'package:houseapp/theme.dart';

class SuccessPage extends StatelessWidget {
  const SuccessPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        bottom: false,
        child: ListView(
          children: [
            const SizedBox(
              height: 100,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/success.png',
                  width: 300,
                ),
                const SizedBox(
                  height: 70,
                ),
                Text(
                  'Well Done!',
                  style: blackTextStyle.copyWith(
                    fontSize: 24,
                  ),
                ),
                const SizedBox(
                  height: 14,
                ),
                Text(
                  'We will inform you via email later once the transaction has been accepted',
                  style: greyTextStyle.copyWith(
                    fontSize: 16,
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(
                  height: 50,
                ),
                SizedBox(
                  width: 210,
                  height: 50,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.pushAndRemoveUntil(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const MainPage(),
                          ),
                          (route) => false);
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: purpleColor,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(17),
                      ),
                    ),
                    child: Text(
                      'Back to Home',
                      style: whiteTextStyle.copyWith(
                        fontSize: 18,
                      ),
                    ),
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 100
            ),
          ]
        ),
      ),
    );
  }
}
