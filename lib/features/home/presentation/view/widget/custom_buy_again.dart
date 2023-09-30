import 'package:flutter/material.dart';

import '../../../../../core/utils/components.dart';
import 'build_item.dart';

class CustomBuyAgain extends StatelessWidget {
  const CustomBuyAgain({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        buildTitle(
          title: 'Buy Again',
          text: 'View all',
          function: (){},
        ),
        SizedBox(
          height: 183,
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            physics: const BouncingScrollPhysics(),
            itemBuilder: (context,index)=> BuildItemListView(cart: true),
            separatorBuilder: (context,index)=>const SizedBox(
              width: 16,
            ),
            itemCount: 20,
          ),
        ),
      ],
    );
  }
}
