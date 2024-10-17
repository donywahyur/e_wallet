import 'package:e_wallet/shared/shared_methods.dart';
import 'package:e_wallet/shared/theme.dart';
import 'package:flutter/material.dart';

class PackageItem extends StatelessWidget {
  const PackageItem(
      {super.key,
      required this.amount,
      required this.price,
      this.isSelected = false});

  final String amount;
  final num price;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 157,
      height: 173,
      padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 22),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: whiteColor,
        border: Border.all(
          color: isSelected ? blueColor : whiteColor,
          width: 2,
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const SizedBox(height: 13),
          Text(
            amount,
            style: blackTextStyle.copyWith(
              fontSize: 30,
              fontWeight: medium,
            ),
            overflow: TextOverflow.ellipsis,
            maxLines: 1,
          ),
          const SizedBox(height: 2),
          Text(
            formatCurrency(price),
            style: greyTextStyle.copyWith(
              fontSize: 12,
              fontWeight: light,
            ),
            overflow: TextOverflow.ellipsis,
            maxLines: 1,
          ),
        ],
      ),
    );
  }
}
