import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';
import 'package:space/theme.dart';

class ProductGridItem extends StatelessWidget {
  final String title;
  final String imageUrl;
  final int price;
  final bool isWishList;

  const ProductGridItem(
      {super.key,
      required this.title,
      required this.imageUrl,
      required this.price,
      required this.isWishList});

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: Container(
        width: (MediaQuery.of(context).size.width - 82) / 2,
        padding: const EdgeInsets.all(20),
        color: kWhiteColor,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              imageUrl,
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              title,
              style: blackTextStyle.copyWith(
                fontSize: 18,
                fontWeight: semiBold,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "\$$price",
                  style: blackTextStyle.copyWith(
                    fontSize: 16,
                    fontWeight: semiBold,
                  ),
                ),
                Image.asset(
                  isWishList ? 'assets/icons/wishlist_active.png' : 'assets/icons/wishlist_icon.png',
                  width: 44,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
