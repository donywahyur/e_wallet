import 'package:e_wallet/shared/theme.dart';
import 'package:e_wallet/ui/widgets/buttons.dart';
import 'package:e_wallet/ui/widgets/form.dart';
import 'package:e_wallet/ui/widgets/package_item.dart';
import 'package:flutter/material.dart';

class DataPackagePage extends StatelessWidget {
  const DataPackagePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Data Package'),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        children: [
          const SizedBox(height: 30),
          Text(
            'Phone Number',
            style: blackTextStyle.copyWith(fontSize: 16, fontWeight: semiBold),
          ),
          const SizedBox(
            height: 10,
          ),
          const CustomFormField(title: '+62', isShowTitle: false),
          const SizedBox(height: 40),
          Text(
            'Select Package',
            style: blackTextStyle.copyWith(fontSize: 16, fontWeight: semiBold),
          ),
          const SizedBox(height: 14),
          buildResult(),
          const SizedBox(height: 80),
          CustomFilledButton(
            title: 'Continue',
            onPressed: () {
              Navigator.pushNamed(context, '/data-package-success');
            },
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
            Wrap(
              spacing: 17,
              runSpacing: 17,
              children: const [
                PackageItem(
                  amount: '5GB',
                  price: 10000,
                  isSelected: true,
                ),
                PackageItem(
                  amount: '10GB',
                  price: 20000,
                ),
                PackageItem(
                  amount: '15GB',
                  price: 30000,
                ),
                PackageItem(
                  amount: '20GB',
                  price: 40000,
                ),
              ],
            )
          ],
        ));
  }
}
