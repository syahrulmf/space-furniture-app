import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:space/theme.dart';
import 'package:space/widgets/home_category_item.dart';
import 'package:space/widgets/home_popular_item.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int currentIndex = 0;
  CarouselSliderController controller = CarouselSliderController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kWhiteGreyColor,
      bottomNavigationBar: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: BottomNavigationBar(
          showUnselectedLabels: false,
          showSelectedLabels: false,
          backgroundColor: kWhiteColor,
          onTap: (value) {
            if(value == 1){
              Navigator.pushNamed(context, '/wishlist');
            }
          },
          items: [
            BottomNavigationBarItem(
              icon: Image.asset(
                'assets/icons/home_icon.png',
                width: 24,
                color: kBlueColor,
              ),
              label: 'home',
            ),
            BottomNavigationBarItem(
              icon: Image.asset(
                'assets/icons/heart_icon.png',
                width: 24,
              ),
              label: 'wishlist',
            ),
            BottomNavigationBarItem(
              icon: Image.asset(
                'assets/icons/person_icon.png',
                width: 24,
              ),
              label: 'profile',
            ),
          ],
        ),
      ),
      body: Stack(
        children: [
          Image.asset(
            'assets/images/bg_image.png',
          ),
          ListView(
            children: [
              // NOTE: HEADER / TITLE
              Container(
                margin: const EdgeInsets.only(
                  top: 24,
                ),
                padding: const EdgeInsets.symmetric(
                  horizontal: 24,
                ),
                child: Row(
                  children: [
                    Image.asset(
                      'assets/images/logo_dark.png',
                      width: 53,
                    ),
                    const SizedBox(
                      width: 8,
                    ),
                    Text(
                      'Space',
                      style: blackTextStyle.copyWith(
                        fontSize: 20,
                        fontWeight: bold,
                      ),
                    ),
                    const Spacer(),
                    Image.asset(
                      'assets/icons/cart_icon.png',
                      width: 30,
                    ),
                  ],
                ),
              ),

              // NOTE: SEARCH BAR
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, '/search');
                },
                child: Container(
                  margin: const EdgeInsets.only(
                    top: 30,
                    left: 24,
                    right: 24,
                  ),
                  padding: const EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(14),
                    color: kWhiteColor,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Search Furniture',
                        style: greyTextStyle.copyWith(
                          fontSize: 16,
                          fontWeight: semiBold,
                        ),
                      ),
                      Image.asset(
                        'assets/icons/search_icon.png',
                        width: 24,
                        color: kGreyColor,
                      )
                    ],
                  ),
                ),
              ),

              // NOTE: CATEGORY TITLE
              Container(
                margin: const EdgeInsets.only(
                  top: 30,
                  left: 24,
                  right: 24,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Category',
                      style: blackTextStyle.copyWith(
                        fontSize: 20,
                        fontWeight: semiBold,
                      ),
                    ),
                    Text(
                      'Show All',
                      style: blackTextStyle,
                    ),
                  ],
                ),
              ),

              // NOTE: CATEGORY CAROUSEL
              Container(
                margin: const EdgeInsets.only(
                  top: 25,
                ),
                child: CarouselSlider(
                  items: const [
                    HomeCategoryItem(
                      title: "Minimalis Chair",
                      subtitle: "Chair",
                      imageUrl: 'assets/images/product_category1.png',
                    ),
                    HomeCategoryItem(
                      title: "Minimalis Table",
                      subtitle: "Table",
                      imageUrl: 'assets/images/product_category2.png',
                    ),
                    HomeCategoryItem(
                      title: "Minimalis Chair",
                      subtitle: "Chair",
                      imageUrl: 'assets/images/product_category3.png',
                    ),
                  ],
                  options: CarouselOptions(
                      height: 140,
                      enableInfiniteScroll: false,
                      viewportFraction: 1,
                      initialPage: currentIndex,
                      onPageChanged: (index, _) {
                        setState(() {
                          currentIndex = index;
                        });
                      }),
                  carouselController: controller,
                ),
              ),

              // NOTE: CATEGORY CAROUSEL INDICATOR
              Container(
                margin: const EdgeInsets.only(
                  top: 13,
                  left: 24,
                  right: 24,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      width: 10,
                      height: 10,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: currentIndex == 0 ? kBlackColor : kLineDarkColor,
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Container(
                      width: 10,
                      height: 10,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: currentIndex == 1 ? kBlackColor : kLineDarkColor,
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Container(
                      width: 10,
                      height: 10,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: currentIndex == 2 ? kBlackColor : kLineDarkColor,
                      ),
                    ),
                  ],
                ),
              ),

              // NOTE: POPULAR SECTION
              Container(
                margin: const EdgeInsets.only(top: 24),
                decoration: BoxDecoration(
                  borderRadius:
                      const BorderRadius.vertical(top: Radius.circular(40)),
                  color: kWhiteColor,
                ),
                child: Column(
                  children: [
                    Container(
                      margin: const EdgeInsets.only(
                        top: 24,
                        left: 24,
                        right: 24,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Popular',
                            style: blackTextStyle.copyWith(
                              fontSize: 24,
                              fontWeight: semiBold,
                            ),
                          ),
                          Text(
                            'Show All',
                            style: blackTextStyle,
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    const SizedBox(
                      height: 350,
                      child: SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: [
                            HomePopularItem(
                              title: 'Poan Sofa',
                              imageUrl: "assets/images/product_category4.png",
                              price: 34,
                              isWishlist: true,
                            ),
                            HomePopularItem(
                              title: 'Poan Chair',
                              imageUrl: "assets/images/product_category3.png",
                              price: 32,
                              isWishlist: false,
                            ),
                            HomePopularItem(
                              title: 'Poan Table',
                              imageUrl: "assets/images/product_category2.png",
                              price: 34,
                              isWishlist: false,
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    )
                  ],
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
