import 'package:e_wallet/shared/theme.dart';
import 'package:flutter/material.dart';

class HomeServiceItem extends StatelessWidget {
  const HomeServiceItem({
    super.key,
    required this.iconUrl,
    required this.title,
    this.onTap,
  });

  final String iconUrl;
  final String title;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        children: [
          Container(
            margin: const EdgeInsets.only(bottom: 8),
            width: 70,
            height: 70,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: whiteColor,
            ),
            child: Center(
                child: Image.asset(
              iconUrl,
              width: 24,
            )),
          ),
          Text(
            title,
            style: blackTextStyle.copyWith(fontSize: 14, fontWeight: medium),
          ),
        ],
      ),
    );
  }
}
