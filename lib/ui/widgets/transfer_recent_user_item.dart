import 'package:e_wallet/shared/theme.dart';
import 'package:flutter/material.dart';

class TransferRecentUserItem extends StatelessWidget {
  const TransferRecentUserItem({
    super.key,
    required this.imageUrl,
    required this.name,
    required this.username,
    this.isVerified = false,
    this.isSelected = false,
  });

  final String imageUrl;
  final String name;
  final String username;
  final bool isVerified;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(22),
      margin: const EdgeInsets.only(bottom: 18),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: whiteColor,
        border: Border.all(
          color: isSelected ? blueColor : whiteColor,
          width: 2,
        ),
      ),
      child: Row(
        children: [
          Container(
            width: 45,
            height: 45,
            margin: const EdgeInsets.only(right: 16),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                image: AssetImage(
                  imageUrl,
                ),
              ),
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                name,
                style:
                    blackTextStyle.copyWith(fontSize: 16, fontWeight: medium),
              ),
              const SizedBox(
                height: 2,
              ),
              Text(
                username,
                style: greyTextStyle.copyWith(fontWeight: reguler),
              )
            ],
          ),
          const Spacer(),
          if (isVerified)
            Row(
              children: [
                Icon(
                  Icons.check_circle,
                  size: 14,
                  color: greenColor,
                ),
                Text(
                  'Verified',
                  style:
                      greenTextStyle.copyWith(fontSize: 11, fontWeight: medium),
                ),
              ],
            )
        ],
      ),
    );
  }
}
