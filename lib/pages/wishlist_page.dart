import 'package:flutter/material.dart';
import 'package:space/theme.dart';
import 'package:space/widgets/product_grid_item.dart';
import 'package:space/widgets/skeleton_item.dart';

class WishlistPage extends StatefulWidget {
  const WishlistPage({super.key});

  @override
  State<WishlistPage> createState() => _WishlistPageState();
}

class _WishlistPageState extends State<WishlistPage> {
  bool isLoading = true;

  @override
  void initState() {

    super.initState();

    Future.delayed(const Duration(seconds: 2), () {
      setState(() {
        isLoading = false;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kWhiteGreyColor,
      appBar: PreferredSize(
        preferredSize: const Size(double.infinity, 60),
        child: AppBar(
          elevation: 0,
          backgroundColor: kWhiteColor,
          automaticallyImplyLeading: false,
          title: Row(
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Icon(
                  Icons.chevron_left,
                  color: kBlackColor,
                ),
              ),
              const SizedBox(
                width: 18,
              ),
              Text(
                'Wish List',
                style: blackTextStyle.copyWith(
                  fontSize: 18,
                  fontWeight: semiBold,
                ),
              ),
              const Spacer(),
              Image.asset(
                'assets/icons/search_icon.png',
                width: 24,
              ),
            ],
          ),
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.only(
          right: 24,
          left: 24,
          bottom: 24,
        ),
        children: [
          const SizedBox(
            height: 30,
          ),
          isLoading ? buildLoading() : buildGrid(),
        ],
      ),
      bottomNavigationBar: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: BottomNavigationBar(
          showUnselectedLabels: false,
          showSelectedLabels: false,
          backgroundColor: kWhiteColor,
          onTap: (value) {
            if(value == 0){
              Navigator.pushNamed(context, '/home');
            }
          },
          items: [
            BottomNavigationBarItem(
              icon: Image.asset(
                'assets/icons/home_icon.png',
                width: 24,
              ),
              label: 'home',
            ),
            BottomNavigationBarItem(
              icon: Image.asset(
                'assets/icons/heart_icon.png',
                width: 24,
                color: kBlueColor,
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
    );
  }

  Widget buildLoading() {
    return const Wrap(
      crossAxisAlignment: WrapCrossAlignment.center,
      spacing: 18,
      runSpacing: 18,
      children: [
        SkeletonItem(),
        SkeletonItem(),
        SkeletonItem(),
        SkeletonItem(),
        SkeletonItem(),
        SkeletonItem(),
        SkeletonItem(),
        SkeletonItem(),
      ],
    );
  }

  Widget buildGrid() {
    return const Wrap(
      crossAxisAlignment: WrapCrossAlignment.center,
      spacing: 18,
      runSpacing: 18,
      children: [
        ProductGridItem(
          title: "Poan Chair",
          imageUrl: 'assets/images/product_grid1.png',
          price: 34,
          isWishList: false,
        ),
        ProductGridItem(
          title: "Poan Chair",
          imageUrl: 'assets/images/product_grid2.png',
          price: 34,
          isWishList: true,
        ),
        ProductGridItem(
          title: "Poan Chair",
          imageUrl: 'assets/images/product_grid3.png',
          price: 34,
          isWishList: false,
        ),
        ProductGridItem(
          title: "Poan Chair",
          imageUrl: 'assets/images/product_grid4.png',
          price: 34,
          isWishList: false,
        ),
        ProductGridItem(
          title: "Poan Chair",
          imageUrl: 'assets/images/product_grid2.png',
          price: 34,
          isWishList: true,
        ),
        ProductGridItem(
          title: "Poan Chair",
          imageUrl: 'assets/images/product_grid1.png',
          price: 34,
          isWishList: false,
        ),
      ],
    );
  }
}
