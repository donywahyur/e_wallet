import 'package:e_wallet/shared/theme.dart';
import 'package:e_wallet/ui/widgets/buttons.dart';
import 'package:e_wallet/ui/widgets/form.dart';
import 'package:flutter/material.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        children: [
          Container(
            margin: const EdgeInsets.only(top: 100, bottom: 100),
            width: 155,
            height: 50,
            decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/images/img_logo_light.png')),
            ),
          ),
          Text(
            'Join Us to Unlock\nYour Growth',
            style: blackTextStyle.copyWith(fontSize: 20, fontWeight: semiBold),
          ),
          const SizedBox(height: 30),
          Container(
            padding: const EdgeInsets.all(22),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20), color: whiteColor),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const CustomFormField(title: 'Fullname'),
                const SizedBox(height: 16),
                const CustomFormField(title: 'Email'),
                const SizedBox(height: 16),
                const CustomFormField(
                  title: 'Password',
                  obscureText: true,
                ),
                const SizedBox(height: 30),
                CustomFilledButton(
                    title: 'Continue',
                    onPressed: () {
                      Navigator.pushNamed(context, '/sign-up-set-profile');
                    }),
              ],
            ),
          ),
          const SizedBox(height: 50),
          CustomTextButton(
              title: 'Sign In',
              onPressed: () {
                Navigator.pushNamed(context, '/sign-in');
              }),
        ],
      ),
    );
  }
}
