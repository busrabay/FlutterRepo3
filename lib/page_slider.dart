import 'package:flutter/material.dart';
import 'package:mistikist_flutter/home_page.dart';
import 'package:mistikist_flutter/page1.dart';
import 'package:mistikist_flutter/page2.dart';
import 'package:mistikist_flutter/page3.dart';
import 'package:mistikist_flutter/page4.dart';

class PageSlider {
  static final List<Widget> pages = [
    MainPage(
      onTap: () {},
    ),
    PageOne(
      onTap: () {},
    ),
    PageTwo(
      onTap: () {},
    ),
    PageThree(
      onTap: () {},
    ),
    PageFour(
      onTap: () {},
    )
  ];
}
