import 'package:e_wallet/shared/theme.dart';
import 'package:flutter/material.dart';

class HomeLatestTransactionItem extends StatelessWidget {
  const HomeLatestTransactionItem({
    super.key,
    required this.iconUrl,
    required this.title,
    required this.amount,
    required this.time,
  });
  final String iconUrl;
  final String title;
  final String amount;
  final String time;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 18),
      child: Row(
        children: [
          Image.asset(iconUrl, width: 48),
          const SizedBox(width: 16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: blackTextStyle.copyWith(
                    fontSize: 16,
                    fontWeight: medium,
                  ),
                ),
                const SizedBox(height: 2),
                Text(time,
                    style: greenTextStyle.copyWith(
                      fontWeight: medium,
                      fontSize: 12,
                    )),
              ],
            ),
          ),
          Text(
            amount,
            style: blackTextStyle.copyWith(
              fontSize: 16,
              fontWeight: medium,
            ),
          ),
        ],
      ),
    );
  }
}
