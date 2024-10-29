import 'package:flutter/material.dart';
import 'package:space/theme.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBlackColor,
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 98,
              height: 82,
              margin: const EdgeInsets.only(right: 16),
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/images/logo_light.png'))),
            ),
            Text(
              "Space",
              style: whiteTextStyle.copyWith(fontSize: 36, fontWeight: bold),
            ),
          ],
        ),
      ),
    );
  }
}
