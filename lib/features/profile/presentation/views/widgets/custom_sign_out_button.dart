import 'package:flutter/material.dart';

import '../../../../../const.dart';
 
class CustomSignOutButton extends StatelessWidget {
  const CustomSignOutButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Container(
        decoration: BoxDecoration(color: primaryColor.withOpacity(.5)),
        child: const Padding(
          padding: EdgeInsets.symmetric(vertical: 12.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SizedBox(width: 24),
              Text(
                'تسجيل الدخول',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 13,
                  fontWeight: FontWeight.w600,
                ),
              ),
              Icon(Icons.login, color: Colors.white, size: 20),
            ],
          ),
        ),
      ),
    );
  }
}
