import 'package:flutter/material.dart';

import '../../../../../core/utils/components.dart';

class CustomBrands extends StatelessWidget {
  const CustomBrands({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        buildTitle(
          title: 'Brands',
          text: 'View all',
          function: (){},
        ),
        SizedBox(
          height: 122,
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            physics: const BouncingScrollPhysics(),
            itemBuilder: (context,index)=> buildItemCategory(),
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
