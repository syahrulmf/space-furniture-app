import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:space/theme.dart';
import 'package:space/widgets/home_category_item.dart';
import 'package:space/widgets/product_grid_item.dart';

class CategoryPage extends StatelessWidget {
  const CategoryPage({super.key});

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
                'Chair',
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
              const SizedBox(
                width: 18,
              ),
              Image.asset(
                'assets/icons/options_icon.png',
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
        children: const [
          SizedBox(
            height: 10,
          ),
          HomeCategoryItem(
            title: "Minimalis Chair",
            subtitle: "Chair",
            imageUrl: 'assets/images/product_category1.png',
          ),
          SizedBox(
            height: 24,
          ),
          Wrap(
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
          )
        ],
      ),
    );
  }
}
