import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'controllers/page1_controller.dart';

class PageFour extends StatelessWidget {
  const PageFour({super.key, this.onTap});
  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<Page1Controller>();
    return const Scaffold(
      body: Center(
        child: Text(
          "WELCOME TO PAGE FOUR",
          style: TextStyle(color: Colors.amberAccent, fontSize: 30, fontWeight: FontWeight.w900),
        ),
      ),
    );
  }
}
