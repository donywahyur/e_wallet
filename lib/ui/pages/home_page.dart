import 'package:e_wallet/shared/shared_methods.dart';
import 'package:e_wallet/shared/theme.dart';
import 'package:e_wallet/ui/widgets/home_latest_transaction_item.dart';
import 'package:e_wallet/ui/widgets/home_service_item.dart';
import 'package:e_wallet/ui/widgets/home_tips_item.dart';
import 'package:e_wallet/ui/widgets/home_user_item.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: purpleColor,
        child: Image.asset('assets/images/ic_plus_circle.png', width: 24),
      ),
      bottomNavigationBar: BottomAppBar(
        elevation: 0,
        color: whiteColor,
        shape: const CircularNotchedRectangle(),
        clipBehavior: Clip.antiAlias,
        notchMargin: 6,
        child: BottomNavigationBar(
            elevation: 0,
            backgroundColor: whiteColor,
            type: BottomNavigationBarType.fixed,
            selectedItemColor: blueColor,
            unselectedItemColor: blackColor,
            showSelectedLabels: true,
            showUnselectedLabels: true,
            selectedLabelStyle:
                blueTextStyle.copyWith(fontSize: 10, fontWeight: medium),
            unselectedLabelStyle:
                blackTextStyle.copyWith(fontSize: 10, fontWeight: medium),
            items: [
              BottomNavigationBarItem(
                icon: Image.asset(
                  'assets/images/ic_overview.png',
                  width: 20,
                  color: blueColor,
                ),
                label: 'Overview',
              ),
              BottomNavigationBarItem(
                icon: Image.asset('assets/images/ic_history.png',
                    width: 20, color: blackColor),
                label: 'History',
              ),
              BottomNavigationBarItem(
                icon: Image.asset('assets/images/ic_statistic.png',
                    width: 20, color: blackColor),
                label: 'Statistic',
              ),
              BottomNavigationBarItem(
                icon: Image.asset('assets/images/ic_reward.png',
                    width: 20, color: blackColor),
                label: 'Reward',
              ),
            ]),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        children: [
          buildProfile(context),
          buildWalletCard(),
          buildLevel(),
          buildServices(context),
          buildLatestTransactions(),
          buildSendAgain(),
          buildFriendlyTips(),
        ],
      ),
    );
  }

  Widget buildProfile(BuildContext context) {
    return Container(
        padding: const EdgeInsets.only(top: 40),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Howdy',
                  style: greyTextStyle.copyWith(fontSize: 16),
                ),
                const SizedBox(height: 2),
                Text(
                  'Dony Ramadhan',
                  style: blackTextStyle.copyWith(
                      fontSize: 20, fontWeight: semiBold),
                )
              ],
            ),
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, '/profile');
              },
              child: Container(
                width: 60,
                height: 60,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                      image: AssetImage('assets/images/img_profile.png')),
                ),
                child: Align(
                  alignment: Alignment.topRight,
                  child: Container(
                    width: 16,
                    height: 16,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: whiteColor,
                    ),
                    child: Center(
                      child: Icon(
                        Icons.check_circle,
                        color: greenColor,
                        size: 14,
                      ),
                    ),
                  ),
                ),
              ),
            )
          ],
        ));
  }

  Widget buildWalletCard() {
    return Container(
      padding: const EdgeInsets.all(30),
      width: double.infinity,
      height: 220,
      margin: const EdgeInsets.only(top: 30),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(28),
        image: const DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage('assets/images/img_bg_card.png'),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Dony Ramadhan',
            style: whiteTextStyle.copyWith(fontSize: 18, fontWeight: medium),
          ),
          const SizedBox(height: 28),
          Text(
            '**** **** **** 1280',
            style: whiteTextStyle.copyWith(
                fontSize: 18, fontWeight: medium, letterSpacing: 6),
          ),
          const SizedBox(height: 21),
          Text(
            'Balance',
            style: whiteTextStyle,
          ),
          Text(
            formatCurrency(290000000),
            style: whiteTextStyle.copyWith(fontSize: 24, fontWeight: semiBold),
          )
        ],
      ),
    );
  }

  Widget buildLevel() {
    return Container(
      margin: const EdgeInsets.only(top: 20),
      padding: const EdgeInsets.all(22),
      width: double.infinity,
      height: 130,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: whiteColor,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Text(
                'Level 1',
                style: blackTextStyle.copyWith(fontWeight: medium),
              ),
              const Spacer(),
              Text(
                '90%',
                style: greenTextStyle.copyWith(fontWeight: semiBold),
              ),
              Text(
                ' of Rp 290.000.000',
                style: blackTextStyle.copyWith(fontWeight: semiBold),
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          ClipRRect(
            borderRadius: BorderRadius.circular(55),
            child: LinearProgressIndicator(
              value: 0.90,
              minHeight: 5,
              backgroundColor: lightBackgroundColor,
              valueColor: AlwaysStoppedAnimation(greenColor),
            ),
          )
        ],
      ),
    );
  }

  Widget buildServices(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Do Something',
            style: blackTextStyle.copyWith(fontSize: 16, fontWeight: semiBold),
          ),
          const SizedBox(
            height: 14,
          ),
          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            HomeServiceItem(
              iconUrl: 'assets/images/ic_topup.png',
              title: 'Top Up',
              onTap: () {
                Navigator.pushNamed(context, '/top-up');
              },
            ),
            HomeServiceItem(
              iconUrl: 'assets/images/ic_send.png',
              title: 'Send',
              onTap: () {
                Navigator.pushNamed(context, '/transfer');
              },
            ),
            HomeServiceItem(
              iconUrl: 'assets/images/ic_withdraw.png',
              title: 'Withdraw',
              onTap: () {},
            ),
            HomeServiceItem(
              iconUrl: 'assets/images/ic_more.png',
              title: 'More',
              onTap: () {
                showDialog(
                    context: context, builder: (_) => moreDialog(context));
              },
            ),
          ]),
        ],
      ),
    );
  }

  Widget buildLatestTransactions() {
    return Container(
      margin: const EdgeInsets.only(top: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Latest Transactions',
            style: blackTextStyle.copyWith(fontSize: 16, fontWeight: semiBold),
          ),
          const SizedBox(
            height: 14,
          ),
          Container(
            margin: const EdgeInsets.only(top: 14),
            padding: const EdgeInsets.all(22),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: whiteColor,
            ),
            child: Column(
              children: [
                HomeLatestTransactionItem(
                  iconUrl: 'assets/images/ic_transaction_cat1.png',
                  title: 'Top Up',
                  amount: '+Rp ${formatCurrency(450000)}',
                  time: 'Yesterday',
                ),
                HomeLatestTransactionItem(
                  iconUrl: 'assets/images/ic_transaction_cat2.png',
                  title: 'Cashbac',
                  amount: '+Rp ${formatCurrency(22000)}',
                  time: 'Yesterday',
                ),
                HomeLatestTransactionItem(
                  iconUrl: 'assets/images/ic_transaction_cat3.png',
                  title: 'Withdraw',
                  amount: '+Rp ${formatCurrency(5000)}',
                  time: 'Yesterday',
                ),
                HomeLatestTransactionItem(
                  iconUrl: 'assets/images/ic_transaction_cat4.png',
                  title: 'Send',
                  amount: '+Rp ${formatCurrency(120000)}',
                  time: 'Yesterday',
                ),
                HomeLatestTransactionItem(
                  iconUrl: 'assets/images/ic_transaction_cat5.png',
                  title: 'Top Up',
                  amount: '+Rp ${formatCurrency(4500000)}',
                  time: 'Yesterday',
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget buildSendAgain() {
    return Container(
      margin: const EdgeInsets.only(top: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Send Again',
            style: blackTextStyle.copyWith(fontSize: 16, fontWeight: semiBold),
          ),
          const SizedBox(
            height: 14,
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: const [
                HomeUserItem(
                    username: 'Pablo',
                    imageUrl: 'assets/images/img_friend1.png'),
                HomeUserItem(
                    username: 'Rodrigo',
                    imageUrl: 'assets/images/img_friend2.png'),
                HomeUserItem(
                    username: 'Ruiz',
                    imageUrl: 'assets/images/img_friend3.png'),
                HomeUserItem(
                    username: 'Pedro',
                    imageUrl: 'assets/images/img_friend4.png'),
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget buildFriendlyTips() {
    return Container(
      margin: const EdgeInsets.only(top: 30, bottom: 50),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Friendly Tips',
            style: blackTextStyle.copyWith(fontSize: 16, fontWeight: semiBold),
          ),
          const SizedBox(height: 14),
          Wrap(
            spacing: 17,
            runSpacing: 18,
            children: const [
              HomeTipsItem(
                imageUrl: 'assets/images/img_tips1.png',
                title: 'Best tips for using a credit card',
                url: 'https://www.google.com',
              ),
              HomeTipsItem(
                imageUrl: 'assets/images/img_tips2.png',
                title: 'Spot the good pie of finance model',
                url: 'https://www.google.com',
              ),
              HomeTipsItem(
                imageUrl: 'assets/images/img_tips3.png',
                title: 'Great hack to get better advice',
                url: 'https://www.google.com',
              ),
              HomeTipsItem(
                imageUrl: 'assets/images/img_tips4.png',
                title: 'Save more penny buy this instead',
                url: 'https://www.google.com',
              )
            ],
          )
        ],
      ),
    );
  }

  Widget moreDialog(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.transparent,
      insetPadding: EdgeInsets.zero,
      alignment: Alignment.bottomCenter,
      content: Container(
        padding: const EdgeInsets.all(30),
        height: 326,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(40),
          color: lightBackgroundColor,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Do more with us',
              style:
                  blackTextStyle.copyWith(fontSize: 16, fontWeight: semiBold),
            ),
            const SizedBox(
              height: 13,
            ),
            Wrap(
              spacing: 29,
              runSpacing: 29,
              children: [
                HomeServiceItem(
                  iconUrl: 'assets/images/ic_product_data.png',
                  title: 'Data',
                  onTap: () {
                    Navigator.pushNamed(context, '/data-provider');
                  },
                ),
                HomeServiceItem(
                  iconUrl: 'assets/images/ic_product_water.png',
                  title: 'Water',
                  onTap: () {},
                ),
                HomeServiceItem(
                  iconUrl: 'assets/images/ic_product_stream.png',
                  title: 'Stream',
                  onTap: () {},
                ),
                HomeServiceItem(
                  iconUrl: 'assets/images/ic_product_movie.png',
                  title: 'Movie',
                  onTap: () {},
                ),
                HomeServiceItem(
                  iconUrl: 'assets/images/ic_product_food.png',
                  title: 'Food',
                  onTap: () {},
                ),
                HomeServiceItem(
                  iconUrl: 'assets/images/ic_product_travel.png',
                  title: 'Travel',
                  onTap: () {},
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
