import 'package:flutter/material.dart';
import 'package:marketi_app/core/utils/components.dart';

import '../../../../../core/utils/styles.dart';

class ViewCategory extends StatelessWidget {
  const ViewCategory({super.key, required this.text, required this.textTitle});

  final String textTitle;
  final String text;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 14,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              buildAppBar(context, textTitle),
              buildSearch(),
               Text(
                text,
                style: Style.style20,
              ),
              const SizedBox(
                height: 14,
              ),
              Expanded(
                child: GridView.builder(
                  physics: const BouncingScrollPhysics(),
                  gridDelegate:
                  const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 19,
                    childAspectRatio: 1/0.7
                  ),
                  itemBuilder: (context, index) => buildItemCategory(context),
                  itemCount: 20,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
