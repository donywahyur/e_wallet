import 'package:carousel_slider/carousel_slider.dart';
import 'package:e_wallet/shared/theme.dart';
import 'package:e_wallet/ui/pages/sign_in_page.dart';
import 'package:e_wallet/ui/widgets/buttons.dart';
import 'package:flutter/material.dart';

class OnboardingPage extends StatefulWidget {
  const OnboardingPage({super.key});

  @override
  State<OnboardingPage> createState() => _OnboardingPageState();
}

class _OnboardingPageState extends State<OnboardingPage> {
  int currentIndex = 0;
  CarouselController carouselController = CarouselController();
  List<String> titles = [
    'Grow Your\nFinancial Health',
    'Build From \nZero To Freedom',
    'Start Together'
  ];
  List<String> subtitles = [
    'Our system is helping you to\nachieve a better goal',
    'We provide tips for you so that\nyou can adapt easier',
    'We will guide you to where\nyou wanted to be'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: lightBackgroundColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CarouselSlider(
                carouselController: carouselController,
                items: [
                  Image.asset(
                    'assets/images/img_onboarding1.png',
                    height: 331,
                  ),
                  Image.asset(
                    'assets/images/img_onboarding2.png',
                    height: 331,
                  ),
                  Image.asset(
                    'assets/images/img_onboarding3.png',
                    height: 331,
                  ),
                ],
                options: CarouselOptions(
                  height: 331,
                  viewportFraction: 1,
                  enableInfiniteScroll: false,
                  onPageChanged: (index, reason) {
                    setState(() {
                      currentIndex = index;
                    });
                  },
                )),
            const SizedBox(
              height: 100,
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 24),
              padding: const EdgeInsets.symmetric(horizontal: 22, vertical: 24),
              decoration: BoxDecoration(
                color: whiteColor,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Column(
                children: [
                  Text(
                    titles[currentIndex],
                    style: blackTextStyle.copyWith(
                        fontSize: 20, fontWeight: semiBold),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(
                    height: 26,
                  ),
                  Text(
                    subtitles[currentIndex],
                    style: greyTextStyle.copyWith(fontSize: 16),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  currentIndex == 2
                      ? Column(
                          children: [
                            CustomFilledButton(
                              title: 'Get Started',
                              onPressed: () {
                                Navigator.pushNamedAndRemoveUntil(
                                    context, '/sign-up', (route) => false);
                              },
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            CustomTextButton(
                              title: 'Sign In',
                              onPressed: () {
                                Navigator.pushNamedAndRemoveUntil(
                                    context, '/sign-in', (route) => false);
                              },
                            )
                          ],
                        )
                      : Row(
                          children: [
                            Container(
                              margin: const EdgeInsets.only(right: 10),
                              width: 12,
                              height: 12,
                              decoration: BoxDecoration(
                                  color: currentIndex == 0
                                      ? blueColor
                                      : lightBackgroundColor,
                                  shape: BoxShape.circle,
                                  border: Border.all(color: blueColor)),
                            ),
                            Container(
                              margin: const EdgeInsets.only(right: 10),
                              width: 12,
                              height: 12,
                              decoration: BoxDecoration(
                                  color: currentIndex == 1
                                      ? blueColor
                                      : lightBackgroundColor,
                                  shape: BoxShape.circle,
                                  border: Border.all(color: blueColor)),
                            ),
                            Container(
                              margin: const EdgeInsets.only(right: 10),
                              width: 12,
                              height: 12,
                              decoration: BoxDecoration(
                                  color: currentIndex == 2
                                      ? blueColor
                                      : lightBackgroundColor,
                                  shape: BoxShape.circle,
                                  border: Border.all(color: blueColor)),
                            ),
                            const Spacer(),
                            CustomFilledButton(
                              title: 'Continue',
                              width: 150,
                              height: 50,
                              onPressed: () {
                                carouselController.nextPage();
                              },
                            ),
                          ],
                        )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
