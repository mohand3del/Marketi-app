import 'package:flutter/material.dart';

import '../../../../../core/utils/components.dart';
import '../../../../../core/utils/constant.dart';
import 'view_category.dart';

class CustomBrands extends StatelessWidget {
  const CustomBrands({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        buildTitle(
          title: 'Brands',
          text: 'View all',
          function: (){
            navigateTo(context, const ViewCategory(text: 'All Brands',textTitle: 'Brands',));
          },
        ),
        SizedBox(
          height: 122,
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            physics: const BouncingScrollPhysics(),
            itemBuilder: (context,index)=> buildItemCategory(context,width: 105),
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
