import 'package:flutter/material.dart';
import 'package:space/theme.dart';
import 'package:space/widgets/profile_menu_item.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  bool isLightMode = true;

  @override
  Widget build(BuildContext context) {
    return AnimatedOpacity(
      duration: const Duration(milliseconds: 50),
      opacity: 1,
      child: Scaffold(
        backgroundColor:
            isLightMode ? kWhiteGreyColor : const Color(0xFF1F1D2B),
        body: Stack(
          children: [
            Image.asset(
              'assets/images/bg_image.png',
              color: isLightMode ? null : const Color(0xFFD8D8D8),
            ),
            ListView(
              children: [
                const SizedBox(
                  height: 150,
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    left: 30,
                    right: 34,
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Image.asset(
                            'assets/images/avatar.png',
                            width: 120,
                          ),
                          const SizedBox(
                            height: 32,
                          ),
                          Text(
                            'Theresa Webb',
                            style: isLightMode
                                ? blackTextStyle.copyWith(
                                    fontSize: 24,
                                    fontWeight: medium,
                                  )
                                : whiteTextStyle.copyWith(
                                    fontSize: 24,
                                    fontWeight: medium,
                                  ),
                          ),
                        ],
                      ),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            isLightMode = !isLightMode;
                          });
                        },
                        child: Container(
                          width: 88,
                          height: 44,
                          padding: const EdgeInsets.all(4),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100),
                            color: isLightMode
                                ? kWhiteColor
                                : kDarkBackgroundColor,
                          ),
                          child: AnimatedAlign(
                            duration: const Duration(milliseconds: 300),
                            alignment: isLightMode
                                ? Alignment.centerLeft
                                : Alignment.centerRight,
                            child: Image.asset(
                              isLightMode
                                  ? 'assets/icons/light_switch_icon.png'
                                  : 'assets/icons/dark_switch_icon.png',
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 50),
                  padding: const EdgeInsets.only(
                    top: 32,
                    left: 24,
                    right: 24,
                    bottom: 60,
                  ),
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.vertical(
                      top: Radius.circular(36),
                    ),
                    color: isLightMode ? kWhiteColor : kDarkBackgroundColor,
                  ),
                  child: Column(
                    children: [
                      ProfileMenuItem(
                        iconUrl: 'assets/icons/person_icon.png',
                        title: "My Profile",
                        isLightMode: isLightMode,
                      ),
                      ProfileMenuItem(
                        iconUrl: 'assets/icons/map_icon.png',
                        title: "My Address",
                        isLightMode: isLightMode,
                      ),
                      ProfileMenuItem(
                        iconUrl: 'assets/icons/shopping_bag_icon.png',
                        title: "My Order",
                        isLightMode: isLightMode,
                      ),
                      ProfileMenuItem(
                        iconUrl: 'assets/icons/credit_card_icon.png',
                        title: "Payment Method",
                        isLightMode: isLightMode,
                      ),
                      ProfileMenuItem(
                        iconUrl: 'assets/icons/heart_icon.png',
                        title: "My wishlist",
                        isLightMode: isLightMode,
                      ),
                      ProfileMenuItem(
                        iconUrl: 'assets/icons/faq_icon.png',
                        title: "Frequently Asked Question",
                        isLightMode: isLightMode,
                      ),
                      ProfileMenuItem(
                        iconUrl: 'assets/icons/headphone_icon.png',
                        title: "Customer Care",
                        isLightMode: isLightMode,
                      ),
                    ],
                  ),
                )
              ],
            ),
          ],
        ),
        bottomNavigationBar: ClipRRect(
          borderRadius: const BorderRadius.vertical(
            top: Radius.circular(5),
          ),
          child: BottomNavigationBar(
            showUnselectedLabels: false,
            showSelectedLabels: false,
            backgroundColor: isLightMode ? kWhiteColor : kDarkBackgroundColor,
            onTap: (value) {
              if (value == 0) {
                Navigator.pushNamed(context, '/home');
              }

              if (value == 1) {
                Navigator.pushNamed(context, '/wishlist');
              }
            },
            items: [
              BottomNavigationBarItem(
                icon: Image.asset(
                  'assets/icons/home_icon.png',
                  width: 24,
                  color: isLightMode ? kBlackColor : kWhiteColor,
                ),
                label: 'home',
              ),
              BottomNavigationBarItem(
                icon: Image.asset(
                  'assets/icons/heart_icon.png',
                  width: 24,
                  color: isLightMode ? kBlackColor : kWhiteColor,
                ),
                label: 'wishlist',
              ),
              BottomNavigationBarItem(
                icon: Image.asset(
                  'assets/icons/person_icon.png',
                  width: 24,
                  color: kBlueColor,
                ),
                label: 'profile',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
