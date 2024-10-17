import 'package:e_wallet/shared/theme.dart';
import 'package:e_wallet/ui/widgets/buttons.dart';
import 'package:e_wallet/ui/widgets/profile_menu_item.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'My Profile',
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.all(24),
        children: [
          const SizedBox(
            height: 20,
          ),
          Container(
            padding: const EdgeInsets.symmetric(vertical: 22, horizontal: 30),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: whiteColor,
            ),
            child: Column(
              children: [
                Container(
                  width: 120,
                  height: 120,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                        image: AssetImage('assets/images/img_profile.png')),
                  ),
                  child: Align(
                    alignment: Alignment.topRight,
                    child: Container(
                      width: 28,
                      height: 28,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: whiteColor,
                      ),
                      child: Center(
                        child: Icon(
                          Icons.check_circle,
                          color: greenColor,
                          size: 24,
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                Text(
                  'Dony Ramadhan',
                  style: blackTextStyle.copyWith(
                    fontSize: 18,
                    fontWeight: medium,
                  ),
                ),
                const SizedBox(
                  height: 40,
                ),
                Column(
                  children: [
                    ProfileMenuItem(
                      iconUrl: 'assets/images/ic_edit_profile.png',
                      title: 'Edit Profile',
                      onTap: () async {
                        if (await Navigator.pushNamed(context, '/pin') ==
                            true) {
                          Navigator.pushNamed(context, '/profile-edit');
                        }
                      },
                    ),
                    ProfileMenuItem(
                      iconUrl: 'assets/images/ic_pin.png',
                      title: 'My PIN',
                      onTap: () async {
                        if (await Navigator.pushNamed(context, '/pin') ==
                            true) {
                          Navigator.pushNamed(context, '/profile-edit-pin');
                        }
                      },
                    ),
                    ProfileMenuItem(
                      iconUrl: 'assets/images/ic_wallet.png',
                      title: 'Wallet Setting',
                      onTap: () {},
                    ),
                    ProfileMenuItem(
                      iconUrl: 'assets/images/ic_reward.png',
                      title: 'My Rewards',
                      onTap: () {},
                    ),
                    ProfileMenuItem(
                      iconUrl: 'assets/images/ic_help.png',
                      title: 'Help Center',
                      onTap: () {},
                    ),
                    ProfileMenuItem(
                      iconUrl: 'assets/images/ic_logout.png',
                      title: 'Logout',
                      onTap: () {},
                    ),
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 87,
          ),
          CustomTextButton(
            title: 'Report a Problem',
            onPressed: () {},
          ),
          const SizedBox(
            height: 50,
          )
        ],
      ),
    );
  }
}
