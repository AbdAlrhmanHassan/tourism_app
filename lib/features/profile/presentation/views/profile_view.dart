import 'package:flutter/material.dart';
import 'package:tourism_app/generated/l10n.dart';

import 'widgets/profile_view_body.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          S.of(context).profileViewTitle,
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: const ProfileViewBody(),
    );
  }
}
