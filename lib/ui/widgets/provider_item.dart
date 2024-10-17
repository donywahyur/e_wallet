import 'package:e_wallet/shared/theme.dart';
import 'package:flutter/material.dart';

class ProviderItem extends StatelessWidget {
  const ProviderItem({
    super.key,
    required this.imageUrl,
    required this.name,
    this.isSelected = false,
  });

  final String imageUrl;
  final String name;
  final bool? isSelected;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(22),
      margin: const EdgeInsets.only(bottom: 18),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: whiteColor,
          border: Border.all(
            color: isSelected! ? blueColor : whiteColor,
            width: 2,
          )),
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        Image.asset(
          imageUrl,
          height: 30,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Text(
              name,
              style: blackTextStyle.copyWith(fontWeight: medium, fontSize: 16),
            ),
            const SizedBox(
              height: 2,
            ),
            Text(
              'available',
              style: greyTextStyle.copyWith(fontWeight: medium, fontSize: 12),
            ),
          ],
        )
      ]),
    );
  }
}
