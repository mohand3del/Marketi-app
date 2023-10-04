import 'package:flutter/material.dart';
import 'package:marketi_app/core/utils/components.dart';
import 'package:marketi_app/core/utils/styles.dart';

class ViewCustom extends StatelessWidget {
  const ViewCustom({super.key, required this.text});

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
            children: [
              buildAppBar(context, text),
              buildSearch(),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'All Products',
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
                          crossAxisSpacing: 10,
                          mainAxisSpacing: 8,
                        ),
                        itemBuilder: (context, index) => buildItem(),
                        itemCount: 20,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
