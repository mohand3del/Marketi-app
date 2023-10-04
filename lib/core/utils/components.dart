import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:marketi_app/core/utils/constant.dart';
import 'package:marketi_app/core/utils/styles.dart';
import 'package:marketi_app/features/home/presentation/view/widget/details_view_category.dart';

Widget buildTitle({
  required String title,
  required String text,
  Function()? function,
}) =>
    Row(
      children: [
        Text(
          title,
          style: const TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w600,
          ),
        ),
        const Spacer(),
        TextButton(
          onPressed: function,
          child: Text(
            text,
            style: const TextStyle(
              color: kPrimaryColor,
            ),
          ),
        ),
      ],
    );

Widget buildItem({
  bool cart = true,
}) =>
    Card(
      color: Colors.white,
      elevation: 5,
      shadowColor: const Color(0xffD9E6FF),
      child: Container(
        height: cart ? 176 : 144,
        width: 160,
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(10)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              alignment: AlignmentDirectional.topStart,
              children: [
                Stack(
                  alignment: AlignmentDirectional.center,
                  children: [
                    Card(
                      elevation: 0,
                      child: Container(
                        height: 96,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: const Color(0xffD9E6FF),
                        ),
                      ),
                    ),
                    Container(
                      width: 90,
                      height: 90,
                      decoration: const BoxDecoration(
                          image: DecorationImage(
                        fit: BoxFit.cover,
                        image: NetworkImage(
                            'https://www.costco.co.uk/medias/sys_master/images/h37/hc3/119433914056734.jpg'),
                      )),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(4),
                  child: Row(
                    children: [
                      Container(
                        width: 80,
                        height: 24,
                        decoration: const BoxDecoration(
                          color: Color(0xffB2CCFF),
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(4),
                            bottomLeft: Radius.circular(4),
                            bottomRight: Radius.elliptical(100, 50),
                          ),
                        ),
                        child: const Text(
                          '15% OFF',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                            color: Color(0xff3F80FF),
                          ),
                        ),
                      ),
                      const Spacer(),
                      const CircleAvatar(
                        radius: 13,
                        backgroundColor: Colors.white,
                        child: Icon(
                          FontAwesomeIcons.heart,
                          size: 15,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 5,
              ),
              child: Row(
                children: [
                  Text(
                    '499 LE',
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Spacer(),
                  Icon(
                    FontAwesomeIcons.star,
                    size: 14,
                  ),
                  SizedBox(
                    width: 2,
                  ),
                  Text(
                    '4.9',
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 2,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 5,
              ),
              child: Text(
                'Smart Watch',
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 12,
                ),
              ),
            ),
            if (cart)
              const SizedBox(
                height: 4,
              ),
            if (cart)
              Center(
                child: InkWell(
                  onTap: () {},
                  child: Container(
                    width: 120,
                    height: 28,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(14),
                      border: Border.all(
                        color: kPrimaryColor,
                      ),
                    ),
                    child: const Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Add',
                          style: TextStyle(
                            fontSize: 14,
                            color: kPrimaryColor,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
          ],
        ),
      ),
    );

Widget buildItemCategory(context,{double? width}) => InkWell(
  onTap: (){
    navigateTo(context, const DetailsViewCategory());
  },
      child: Column(
        children: [
          Container(
            width: width,
            height: 96,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              border: Border.all(color: const Color(0xffB2CCFFB2)),
              image: const DecorationImage(
                  fit: BoxFit.contain,
                  image: NetworkImage(
                      'https://www.sony.com/image/b789488955522f13ffb4778bd08465c6?fmt=pjpeg&wid=330&bgcolor=FFFFFF&bgc=FFFFFF')),
            ),
          ),
          const Text(
            'Electronics',
            style: TextStyle(
              fontSize: 16,
            ),
          ),
        ],
      ),
    );

Widget buildItemDetailsCategory()=>SizedBox(
  height: 135,
  child: Row(
    children: [
      Container(
        height: 108,
        width: 107,
        decoration: const BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.cover,
                image: NetworkImage('https://th.bing.com/th/id/R.d2aec30e89cd54fa3f2c2e2321c8d6da?rik=Hp56COlIvK3xuA&pid=ImgRaw&r=0'))
        ),
      ),
      Expanded(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Row(
              children: [
                Text('Pampers Swaddlers',
                  style: Style.style14,
                ),
                Spacer(),
                Icon(
                  FontAwesomeIcons.heart,
                  size: 15,
                ),
              ],
            ),
            const Text('84 Diapers',
              style: TextStyle(
                  fontSize: 12,
                  color: Color(0xff67687E)
              ),
            ),
            const SizedBox(
              height: 4,
            ),
            const Row(
              children: [
                Icon(Icons.watch_later_outlined,size: 14.7,color: Color(0xff3F80FF),),
                SizedBox(
                  width: 6,
                ),
                Text('Deliver in 60 mins',
                  style: TextStyle(
                    fontSize: 12,
                    color: Color(0xff002B7F),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 4,
            ),
            const Row(
              children: [
                Text('Price: 345,00 EGP',
                  style: Style.style14,
                ),
                Spacer(),
                Row(
                  children: [
                    Icon(FontAwesomeIcons.star,size: 14,color: Color(0xff001640),),
                    SizedBox(
                      width: 4,
                    ),
                    Text('4.9',
                      style: Style.style12,
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(
              height: 8,
            ),
            Container(
              height: 37,
              width: double.infinity,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(14),
                  border: Border.all(color: Color(0xff3F80FF))
              ),
              child: MaterialButton(
                onPressed: (){},
                child:  Text('Add',
                  style: Style.style14.copyWith(
                      color: kPrimaryColor
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    ],
  ),
);

Widget buildAppBar(context, String text,{bool cart=true}) => Row(
      children: [
        InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: Container(
            height: 48,
            width: 48,
            decoration: BoxDecoration(
              border: Border.all(color: const Color(0xffB2CCFFB2)),
              shape: BoxShape.circle,
            ),
            child: const Icon(
              FontAwesomeIcons.chevronLeft,
              color: Colors.black45,
            ),
          ),
        ),
        const Spacer(),
        Text(
          text,
          style: const TextStyle(
            fontSize: 20,
          ),
        ),
        const Spacer(),
        cart? Stack(
          alignment: AlignmentDirectional.center,
          children: [
            Container(
              height: 48,
              width: 48,
              decoration: BoxDecoration(
                border: Border.all(color: kPrimaryColor),
                shape: BoxShape.circle,
              ),
            ),
            const CircleAvatar(
              radius: 20,
              backgroundImage: NetworkImage(
                  'https://plus.unsplash.com/premium_photo-1664474619075-644dd191935f?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MXx8aW1hZ2V8ZW58MHx8MHx8fDA%3D&w=1000&q=80'),
            ),
          ],
        ):const Stack(
          alignment: AlignmentDirectional.topEnd,
          children: [
            CircleAvatar(
              radius: 8,
              backgroundColor: Colors.blue,
              child: Text('3',
              style: TextStyle(
                fontSize: 10,
                color: Colors.white,
              ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(6.0),
              child: Icon(
                Icons.shopping_cart_outlined,
                size: 28,
                color: Colors.blue,
              ),
            ),
          ],
        ),
      ],
    );

Widget buildSearch() => Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 14,
      ),
      child: Container(
        height: 44,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(14),
          color: Colors.white,
          border: Border.all(
            color: Colors.blue.shade100,
            width: 2,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 10,
          ),
          child: Row(
            children: [
              const Icon(
                FontAwesomeIcons.magnifyingGlass,
                size: 24,
              ),
              const SizedBox(
                width: 15,
              ),
              const Expanded(
                child: Text(
                  'What are you looking for ?',
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      color: Color(0xff929BAB)),
                ),
              ),
              InkWell(
                onTap: () {},
                child: Container(
                    padding: const EdgeInsetsDirectional.symmetric(
                      horizontal: 3,
                      vertical: 3,
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(color: Colors.blue.shade100, width: 1),
                    ),
                    child: const Icon(
                      FontAwesomeIcons.sliders,
                      color: Colors.blue,
                      size: 24,
                    )),
              ),
            ],
          ),
        ),
      ),
    );
