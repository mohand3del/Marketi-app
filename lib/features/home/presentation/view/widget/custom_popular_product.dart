import 'package:flutter/material.dart';
import 'package:marketi_app/core/utils/components.dart';
import 'package:marketi_app/core/utils/constant.dart';
import 'package:marketi_app/features/home/presentation/view/widget/view_custom.dart';

class CustomPopularProduct extends StatelessWidget {
  const CustomPopularProduct({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        buildTitle(
            title: 'Popular Product',
            text: 'View all',
            function: (){
              navigateTo(context,  const ViewCustom(
                text: 'Popular Product',
              ));
            },
        ),
        SizedBox(
          height: 166,
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            physics: const BouncingScrollPhysics(),
            itemBuilder: (context,index)=> buildItem(cart: false),
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
