import 'package:flutter/material.dart';

import 'custom_list_tile.dart';
import 'custom_sign_out_button.dart';
import 'user_info.dart';

class ProfileViewBody extends StatefulWidget {
  const ProfileViewBody({super.key});

  @override
  State<ProfileViewBody> createState() => _ProfileViewBodyState();
}

class _ProfileViewBodyState extends State<ProfileViewBody> {
  bool isNotificationOn = true;
  bool isDarkMode = false;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
              padding: EdgeInsets.only(left: 16.0, right: 16.0, top: 16.0),
              child: CustomUserInfo()),
          const SizedBox(height: 16),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: Text(
              'عام',
              style: TextStyle(
                color: Color(0xFF0C0D0D),
                fontSize: 13,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          const SizedBox(height: 8),
          const CustomListTile(
            icon: Icon(Icons.person),
            titleV: 'الملف الشخصي',
          ),
          const CustomListTile(
            icon: Icon(Icons.favorite),
            titleV: 'المفضلة',
          ),
          CustomListTile(
            icon: const Icon(Icons.notifications),
            titleV: 'الاشعارات',
            switchV: isNotificationOn,
            onChanged: (value) {
              isNotificationOn = value;
              setState(() {});
            },
          ),
          const CustomListTile(
            icon: Icon(Icons.language),
            titleV: 'اللغة',
          ),
          CustomListTile(
            icon: const Icon(Icons.dark_mode),
            titleV: 'الوضع',
            switchV: isDarkMode,
            onChanged: (value) {
              isDarkMode = value;
              setState(() {});
            },
          ),
          const SizedBox(height: 22),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: Text(
              'المساعده',
              style: TextStyle(
                color: Color(0xFF0C0D0D),
                fontSize: 13,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          const SizedBox(height: 16),
          const CustomListTile(
            icon: Icon(Icons.info),
            titleV: 'من نحن',
          ),
          const SizedBox(height: 24),
          const CustomSignOutButton(),
          const SizedBox(height: 24),
        ],
      ),
    );
  }
}
