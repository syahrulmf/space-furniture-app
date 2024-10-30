import 'package:flutter/material.dart';
import 'package:space/theme.dart';

class HomePopularItem extends StatelessWidget {
  final String title;
  final String imageUrl;
  final int price;
  final bool isWishlist;

  const HomePopularItem(
      {super.key,
      required this.title,
      required this.imageUrl,
      required this.price,
      required this.isWishlist});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        margin: const EdgeInsets.only(left: 24),
        child: Column(
          children: [
            Container(
              width: 200,
              height: 180,
              decoration: BoxDecoration(
                color: kWhiteGreyColor,
                borderRadius: const BorderRadius.vertical(
                  top: Radius.circular(10),
                ),
              ),
              child: Center(
                child: Image.asset(
                  imageUrl,
                  width: 160,
                ),
              ),
            ),
            Container(
              width: 200,
              height: 120,
              padding: const EdgeInsets.symmetric(
                horizontal: 20,
                vertical: 12,
              ),
              decoration: BoxDecoration(
                color: kWhiteColor,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: blackTextStyle.copyWith(
                        fontSize: 18, fontWeight: semiBold),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        '\$$price',
                        style: blackTextStyle.copyWith(
                            fontSize: 18, fontWeight: semiBold),
                      ),
                      Image.asset(
                        isWishlist
                            ? 'assets/icons/wishlist_active.png'
                            : 'assets/icons/wishlist_icon.png',
                        width: 44,
                      ),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
