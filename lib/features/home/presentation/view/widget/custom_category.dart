import 'package:flutter/material.dart';

import '../../../../../core/utils/components.dart';

class CustomCategory extends StatelessWidget {
  const CustomCategory({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        buildTitle(
          title: 'Category',
          text: 'View all',
          function: (){},
        ),
        SizedBox(
          height: 266,
          child: GridView.builder(
            physics: const NeverScrollableScrollPhysics(),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
            ),
            itemBuilder: (context,index)=>buildItemCategory(),
            itemCount: 6,
          ),
        ),
      ],
    );
  }
}
