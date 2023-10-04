import 'package:flutter/material.dart';

import '../../../../../core/utils/components.dart';
import '../../../../../core/utils/constant.dart';
import 'view_custom.dart';

class CustomBest extends StatelessWidget {
  const CustomBest({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        buildTitle(
          title: 'Best for You',
          text: 'View all',
          function: (){
            navigateTo(context,  const ViewCustom(
              text: 'Best for you',
            ));
          },
        ),
        SizedBox(
          height: 183,
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            physics: const BouncingScrollPhysics(),
            itemBuilder: (context,index)=> buildItem(cart: true),
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
