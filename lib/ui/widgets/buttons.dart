import 'package:e_wallet/shared/theme.dart';
import 'package:flutter/material.dart';

class CustomFilledButton extends StatelessWidget {
  const CustomFilledButton(
      {super.key,
      required this.title,
      this.width = double.infinity,
      this.height = 50,
      this.onPressed});

  final String title;
  final double width;
  final double height;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: TextButton(
        style: TextButton.styleFrom(
            backgroundColor: purpleColor,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(56),
            )),
        onPressed: onPressed,
        child: Text(
          title,
          style: whiteTextStyle.copyWith(fontSize: 16, fontWeight: semiBold),
        ),
      ),
    );
  }
}

class CustomTextButton extends StatelessWidget {
  const CustomTextButton(
      {super.key,
      required this.title,
      this.width = double.infinity,
      this.height = 24,
      this.onPressed});

  final String title;
  final double width;
  final double height;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: TextButton(
        style: TextButton.styleFrom(padding: EdgeInsets.zero),
        onPressed: onPressed,
        child: Text(
          title,
          style: greyTextStyle.copyWith(fontSize: 16),
        ),
      ),
    );
  }
}

class CustomInputButton extends StatelessWidget {
  const CustomInputButton({
    super.key,
    required this.title,
    this.onTap,
  });

  final String title;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 60,
        width: 60,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: numberBackgroundColor,
        ),
        child: Center(
          child: Text(
            title,
            style: blackTextStyle.copyWith(
              fontSize: 22,
              fontWeight: semiBold,
              color: whiteColor,
            ),
          ),
        ),
      ),
    );
  }
}
