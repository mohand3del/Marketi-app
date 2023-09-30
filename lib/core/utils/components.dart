import 'package:flutter/material.dart';
import 'package:marketi_app/core/utils/constant.dart';

Widget buildTitle({
  required String title,
  required String text,
  required Function function,
})=>Row(
  children: [
     Text(title,
      style: const TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.w600,
      ),
    ),
    const Spacer(),
    TextButton(
      onPressed: function(),
      child:  Text(text,
      style: const TextStyle(
        color: kPrimaryColor,
      ),
      ),
    ),
  ],
);

Widget buildItemCategory()=>Column(
  children: [
    Container(
      width: 105,
      height: 96,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: Color(0xffB2CCFFB2)),
        image: const DecorationImage(
            fit: BoxFit.cover,
            image: NetworkImage('https://www.sony.com/image/b789488955522f13ffb4778bd08465c6?fmt=pjpeg&wid=330&bgcolor=FFFFFF&bgc=FFFFFF')),

      ),
    ),
    const Text('Electronics',
      style: TextStyle(
        fontSize: 16,
      ),
    ),
  ],
);