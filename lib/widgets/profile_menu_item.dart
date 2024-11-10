import 'package:flutter/material.dart';
import 'package:space/theme.dart';

class ProfileMenuItem extends StatelessWidget {
  final String iconUrl;
  final String title;
  final bool isLightMode;

  const ProfileMenuItem({
    super.key,
    required this.iconUrl,
    required this.title,
    required this.isLightMode,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(
        bottom: 30,
      ),
      child: Row(
        children: [
          Image.asset(
            iconUrl,
            width: 24,
            color: isLightMode ? kBlackColor : kWhiteColor,
          ),
          const SizedBox(
            width: 20,
          ),
          Text(
            title,
            style: isLightMode
                ? blackTextStyle.copyWith(
                    fontSize: 18,
                    fontWeight: semiBold,
                  )
                : whiteTextStyle.copyWith(
                    fontSize: 18,
                    fontWeight: semiBold,
                  ),
          ),
          const Spacer(),
          Icon(
            Icons.chevron_right,
            color: isLightMode ? kGreyColor : kWhiteColor,
          ),
        ],
      ),
    );
  }
}
