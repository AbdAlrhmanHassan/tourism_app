import 'package:flutter/material.dart';

import 'widgets/faviority_view_body.dart';

class FaviorityView extends StatelessWidget {
  const FaviorityView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'المفضلة',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: const FaviorityViewBody(),
    );
  }
}
