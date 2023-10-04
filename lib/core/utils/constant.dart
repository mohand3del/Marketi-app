import 'package:flutter/material.dart';

const kPrimaryColor = Color(0xff3F80FF);

void navigateTo(context,Widget) => Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => Widget),
    );
