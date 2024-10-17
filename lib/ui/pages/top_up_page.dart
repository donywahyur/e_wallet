import 'package:e_wallet/shared/theme.dart';
import 'package:e_wallet/ui/widgets/bank_item.dart';
import 'package:e_wallet/ui/widgets/buttons.dart';
import 'package:flutter/material.dart';

class TopUpPage extends StatelessWidget {
  const TopUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Top Up'),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        children: [
          const SizedBox(height: 30),
          Text(
            'Wallet',
            style: blackTextStyle.copyWith(fontSize: 16, fontWeight: semiBold),
          ),
          Row(
            children: [
              Image.asset('assets/images/img_wallet.png', width: 80),
              const SizedBox(
                width: 16,
              ),
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
                    'Dony Ramadhan',
                    style: greyTextStyle.copyWith(fontSize: 12),
                  )
                ],
              )
            ],
          ),
          const SizedBox(height: 40),
          Text(
            'Select Bank',
            style: blackTextStyle.copyWith(fontSize: 16, fontWeight: semiBold),
          ),
          const SizedBox(height: 14),
          const BankItem(
              imageUrl: 'assets/images/img_bank_bca.png',
              title: 'Bank BCA',
              isSelected: true),
          const BankItem(
              imageUrl: 'assets/images/img_bank_bni.png', title: 'Bank BNI'),
          const BankItem(
              imageUrl: 'assets/images/img_bank_mandiri.png',
              title: 'Bank Mandiri'),
          const BankItem(
              imageUrl: 'assets/images/img_bank_ocbc.png', title: 'Bank Cimb'),
          const SizedBox(
            height: 12,
          ),
          CustomFilledButton(
              title: 'Continue',
              onPressed: () {
                Navigator.pushNamed(context, '/top-up-amount');
              }),
          const SizedBox(
            height: 57,
          ),
        ],
      ),
    );
  }
}
