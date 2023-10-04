import 'package:flutter/material.dart';
import 'package:marketi_app/features/home/presentation/view/widget/custom_app_bar.dart';
import 'package:marketi_app/features/home/presentation/view/widget/custom_best_for_you.dart';
import 'package:marketi_app/features/home/presentation/view/widget/custom_brands.dart';
import 'package:marketi_app/features/home/presentation/view/widget/custom_buy_again.dart';
import 'package:marketi_app/features/home/presentation/view/widget/custom_category.dart';

import '../../../../../core/utils/components.dart';
import 'custom_popular_product.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: CustomScrollView(
        physics: const BouncingScrollPhysics(),
        slivers: [
          SliverFillRemaining(
            hasScrollBody: false,
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 14,
                vertical: 14,
              ),
              child: Column(
                children: [
                  const CustomAppBar(),
                   buildSearch(),
                  Container(
                    margin: const EdgeInsets.only(bottom: 14),
                    height: 120,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(14),
                      image: const DecorationImage(
                        fit: BoxFit.cover,
                        image: NetworkImage(
                            'https://helpx.adobe.com/content/dam/help/en/photoshop/using/convert-color-image-black-white/jcr_content/main-pars/before_and_after/image-before/Landscape-Color.jpg'),
                      ),
                    ),
                  ),
                  const CustomPopularProduct(),
                  const CustomCategory(),
                  const CustomBest(),
                  const CustomBrands(),
                  const CustomBuyAgain(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
