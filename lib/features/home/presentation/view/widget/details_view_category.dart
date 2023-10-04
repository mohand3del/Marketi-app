import 'package:flutter/material.dart';
import 'package:marketi_app/core/utils/components.dart';

class DetailsViewCategory extends StatelessWidget {
  const DetailsViewCategory({super.key});

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
              buildAppBar(context, 'Pampers',cart: false),
              buildSearch(),
              Expanded(
                child: ListView.separated(
                  physics: const BouncingScrollPhysics(),
                  itemBuilder: (context,index)=>buildItemDetailsCategory(),
                  separatorBuilder: (context,index)=>Padding(
                    padding: const EdgeInsets.symmetric(
                      vertical: 8,
                      horizontal: 8,
                    ),
                    child: Container(
                      width: double.infinity,
                      height: 1,
                      color: const Color(0xffDCDDE0),
                    ),
                  ),
                  itemCount: 20,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
