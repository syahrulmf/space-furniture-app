import 'package:flutter/material.dart';
import 'package:space/theme.dart';
import 'package:space/widgets/product_list_item.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kWhiteGreyColor,
      appBar: PreferredSize(
        preferredSize: const Size(double.infinity, 70),
        child: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: kWhiteColor,
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
              Expanded(
                child: Container(
                  padding: const EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    color: kWhiteGreyColor,
                    borderRadius: BorderRadius.circular(14),
                  ),
                  child: Row(
                    children: [
                      Expanded(
                        child: TextFormField(
                          textInputAction: TextInputAction.go,
                          onFieldSubmitted: (value) {
                            Navigator.pushNamed(context, '/search-result');
                          },
                          decoration: InputDecoration.collapsed(
                            hintText: 'Search furniture',
                            hintStyle: greyTextStyle.copyWith(
                              fontSize: 16,
                              fontWeight: semiBold,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Icon(
                        Icons.close,
                        color: kGreyColor,
                      ),
                    ],
                  ),
                ),
              ),
        
            ],
          ),
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(
          horizontal: 24,
        ),
        children: [
          const SizedBox(
            height: 41,
          ),
          Text(
            'Recommendation',
            style: blackTextStyle.copyWith(
              fontSize: 16,
              fontWeight: semiBold,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          const ProductListItem(
              title: 'Poan Chair',
              price: 34,
              imageUrl:
              'assets/images/product_list1.png',
          ),
          const ProductListItem(
              title: 'Poan Chair',
              price: 42,
              imageUrl:
              'assets/images/product_list2.png',
          ),
          const ProductListItem(
              title: 'Poan Chair',
              price: 34,
              imageUrl:
              'assets/images/product_list3.png',
          ),
          const ProductListItem(
              title: 'Poan Table',
              price: 38,
              imageUrl:
              'assets/images/product_list4.png',
          ),
        ],
      )
    );
  }
}

