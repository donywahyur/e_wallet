import 'package:e_wallet/shared/theme.dart';
import 'package:e_wallet/ui/widgets/buttons.dart';
import 'package:flutter/material.dart';

class SignUpSuccess extends StatelessWidget {
  const SignUpSuccess({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
      Text(
        "Akun Berhasil\nTerdaftar",
        textAlign: TextAlign.center,
        style: blackTextStyle.copyWith(
          fontSize: 20,
          fontWeight: semiBold,
        ),
      ),
      const SizedBox(height: 26),
      Text(
        "Grow your finance start\ntogether with us",
        textAlign: TextAlign.center,
        style: greyTextStyle.copyWith(
          fontSize: 16,
        ),
      ),
      const SizedBox(height: 26),
      CustomFilledButton(
        title: 'Get Started',
        width: 183,
        onPressed: () {
          Navigator.pushNamedAndRemoveUntil(context, '/home', (route) => false);
        },
      )
    ])));
  }
}
