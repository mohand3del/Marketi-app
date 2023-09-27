import 'package:flutter/material.dart';

import 'widget/bottom_nav_bar.dart';

class LayoutView extends StatelessWidget {
  const LayoutView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      //body: LayoutViewBody(),
      bottomNavigationBar: BottomNavBar(),
    );
  }
}
