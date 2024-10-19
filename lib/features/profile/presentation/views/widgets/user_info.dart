import 'package:flutter/material.dart';

import '../../../../../const.dart';

class CustomUserInfo extends StatelessWidget {
  const CustomUserInfo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          height: MediaQuery.of(context).size.height * .15,
          child: Stack(
            children: [
              ClipOval(
                child: Image.network(
                  'https://www.pishrophd.com/wp-content/uploads/2021/05/avatar.jpg.320x320px.jpg',
                  width: MediaQuery.of(context).size.height * .13,
                  height: MediaQuery.of(context).size.height * .13,
                ),
              ),
              Positioned(
                bottom: -12,
                left: 0,
                right: 0,
                child: Container(
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.circle,
                  ),
                  padding: const EdgeInsets.all(5.0),
                  margin: const EdgeInsets.all(12.0),
                  child: CircleAvatar(
                    backgroundColor: const Color(0xffF9F9F9),
                    child: IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.camera_alt_outlined,
                        color: primaryColor,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        const SizedBox(width: 24),
        const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'اسم المستخدم',
              style: TextStyle(
                color: Color(0xFF131F46),
                fontSize: 13,
                fontWeight: FontWeight.w700,
              ),
            ),
            SizedBox(height: 4),
            Text(
              'userEmail.com',
              style: TextStyle(
                color: Color(0xFF888FA0),
                fontSize: 13,
                fontWeight: FontWeight.w400,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
