import 'package:e_wallet/shared/theme.dart';
import 'package:e_wallet/ui/widgets/buttons.dart';
import 'package:flutter/material.dart';

class ProfileEditSuccess extends StatelessWidget {
  const ProfileEditSuccess({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
      Text(
        "Nice Update",
        textAlign: TextAlign.center,
        style: blackTextStyle.copyWith(
          fontSize: 20,
          fontWeight: semiBold,
        ),
      ),
      const SizedBox(height: 26),
      Text(
        "Your data is safe in our system",
        textAlign: TextAlign.center,
        style: greyTextStyle.copyWith(
          fontSize: 16,
        ),
      ),
      const SizedBox(height: 26),
      CustomFilledButton(
        title: 'My Profile',
        width: 183,
        onPressed: () {
          Navigator.pushNamedAndRemoveUntil(
              context, '/profile', (route) => false);
        },
      )
    ])));
  }
}
