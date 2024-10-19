import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../../const.dart';

class CustomListTile extends StatelessWidget {
  const CustomListTile({
    super.key,
    required this.icon,
    required this.titleV,
    this.routeName,
    this.switchV,
    this.onChanged,
  });
  final Icon icon;

  final String titleV;
  final String? routeName;
  final bool? switchV;
  final void Function(bool)? onChanged;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Column(
        children: [
          ListTile(
            onTap: routeName != null
                ? () {
                    Navigator.pushNamed(context, routeName!);
                  }
                : null,
            contentPadding: EdgeInsets.zero,
            leading: icon,
            title: Text(
              titleV,
              style: const TextStyle(
                color: Color(0xFF949D9E),
                fontSize: 13,
                fontWeight: FontWeight.w600,
              ),
            ),
            trailing: switchV == null
                ? const Icon(
                    Icons.arrow_forward_ios_outlined,
                    color: Color(0xff0C0D0D),
                    size: 20,
                  )
                : CupertinoSwitch(
                    activeColor: primaryColor,
                    value: switchV!,
                    onChanged: onChanged,
                  ),
          ),
          const Divider(
            color: Color(0xffF2F3F3),
            thickness: 1.0,
            height: 3,
          ),
        ],
      ),
    );
  }
}
