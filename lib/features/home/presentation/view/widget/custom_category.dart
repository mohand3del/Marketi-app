import 'package:flutter/material.dart';
import 'package:marketi_app/core/utils/constant.dart';
import 'package:marketi_app/features/home/presentation/view/widget/view_category.dart';

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
          function: (){
            navigateTo(context, const ViewCategory(text: 'All Categories',textTitle: 'Categories',));
          },
        ),
        SizedBox(
          height: 266,
          child: GridView.builder(
            physics: const NeverScrollableScrollPhysics(),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
              crossAxisSpacing: 16,
              childAspectRatio: 1/1.1
            ),
            itemBuilder: (context,index)=>buildItemCategory(context),
            itemCount: 6,
          ),
        ),
      ],
    );
  }
}
