import 'package:flutter/material.dart';
import 'package:space/theme.dart';

class SearchResultPage extends StatelessWidget {
  const SearchResultPage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size(double.infinity, 70),
        child: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: kWhiteColor,
          title: Row(
            children: [
              Icon(
                Icons.chevron_left,
                color: kBlackColor,
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
              const SizedBox(
                width: 8,
              ),
              Image.asset(
                'assets/icons/options_icon.png',
                width: 24,
              ),
            ],
          ),
        ),
      ),
      body: const Center(
        child: Text(
          'Search Result',
        ),
      ),
    );
  }
}

