import 'package:e_wallet/shared/theme.dart';
import 'package:e_wallet/ui/widgets/buttons.dart';
import 'package:e_wallet/ui/widgets/form.dart';
import 'package:e_wallet/ui/widgets/transfer_recent_user_item.dart';
import 'package:e_wallet/ui/widgets/transfer_result_user_item.dart';
import 'package:flutter/material.dart';

class TransferPage extends StatelessWidget {
  const TransferPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Transfer'),
        ),
        body: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          children: [
            const SizedBox(height: 30),
            Text(
              'Search',
              style:
                  blackTextStyle.copyWith(fontSize: 16, fontWeight: semiBold),
            ),
            const SizedBox(
              height: 14,
            ),
            const CustomFormField(
              title: 'By Username',
              isShowTitle: false,
            ),
            // buildRecentUsers(),
            buildResult(),
            const SizedBox(
              height: 274,
            ),
            CustomFilledButton(
              title: 'Continue',
              onPressed: () {
                Navigator.pushNamed(context, '/transfer-amount');
              },
            )
          ],
        ));
  }

  Widget buildRecentUsers() {
    return Container(
      margin: const EdgeInsets.only(top: 40),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Recent Users',
            style: blackTextStyle.copyWith(fontWeight: semiBold, fontSize: 16),
          ),
          const SizedBox(
            height: 14,
          ),
          const TransferRecentUserItem(
              imageUrl: 'assets/images/img_friend1.png',
              name: 'Pablo',
              username: '@pablo'),
          const TransferRecentUserItem(
            imageUrl: 'assets/images/img_friend2.png',
            name: 'Pedro',
            username: '@pedro',
            isVerified: true,
          ),
          const TransferRecentUserItem(
            imageUrl: 'assets/images/img_friend3.png',
            name: 'Paul',
            username: '@paul',
            isVerified: true,
          ),
        ],
      ),
    );
  }

  Widget buildResult() {
    return Container(
        margin: const EdgeInsets.only(top: 40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Result',
              style:
                  blackTextStyle.copyWith(fontSize: 16, fontWeight: semiBold),
            ),
            const SizedBox(
              height: 14,
            ),
            Wrap(
              spacing: 17,
              runSpacing: 17,
              children: const [
                TransferResultUserItem(
                  imageUrl: 'assets/images/img_friend1.png',
                  name: 'Pedro',
                  username: '@pedro',
                  isVerified: true,
                  isSelected: true,
                ),
                TransferResultUserItem(
                  imageUrl: 'assets/images/img_friend2.png',
                  name: 'Paul',
                  username: '@paul',
                ),
              ],
            )
          ],
        ));
  }
}
