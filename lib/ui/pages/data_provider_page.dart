import 'package:e_wallet/shared/theme.dart';
import 'package:e_wallet/ui/widgets/buttons.dart';
import 'package:e_wallet/ui/widgets/provider_item.dart';
import 'package:flutter/material.dart';

class DataProviderPage extends StatelessWidget {
  const DataProviderPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Beli Data'),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        children: [
          const SizedBox(height: 30),
          Text(
            'Form Wallet',
            style: blackTextStyle.copyWith(fontSize: 16, fontWeight: semiBold),
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            children: [
              Image.asset(
                'assets/images/img_wallet.png',
                width: 80,
              ),
              const SizedBox(width: 16),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '1001 xxxx xxxx xxxx',
                    style: blackTextStyle.copyWith(
                        fontSize: 16, fontWeight: medium),
                  ),
                  const SizedBox(
                    height: 2,
                  ),
                  Text(
                    'Balance Rp. 102.000.000',
                    style: greyTextStyle.copyWith(
                      fontSize: 12,
                      fontWeight: reguler,
                    ),
                  ),
                ],
              )
            ],
          ),
          const SizedBox(height: 40),
          Text(
            'Select Provider',
            style: blackTextStyle.copyWith(fontSize: 16, fontWeight: semiBold),
          ),
          const SizedBox(height: 14),
          const ProviderItem(
            name: 'Telkomsel',
            imageUrl: 'assets/images/img_provider_telkomsel.png',
            isSelected: true,
          ),
          const ProviderItem(
            name: 'Indosat',
            imageUrl: 'assets/images/img_provider_indosat.png',
          ),
          const ProviderItem(
            name: 'singtel',
            imageUrl: 'assets/images/img_provider_singtel.png',
          ),
          const SizedBox(height: 135),
          CustomFilledButton(
              title: 'Continue',
              onPressed: () {
                Navigator.pushNamed(context, '/data-package');
              }),
          const SizedBox(height: 57),
        ],
      ),
    );
  }
}
