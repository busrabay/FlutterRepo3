import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'controllers/page1_controller.dart';

class PageTwo extends StatelessWidget {
  const PageTwo({super.key, this.onTap});
  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<Page1Controller>();
    return const Center(
      child: Text(
        "WELCOME TO PAGE TWO",
        style: TextStyle(
          color: Colors.amberAccent,
          fontSize: 30,
          fontWeight: FontWeight.w900,
        ),
      ),
    );
  }
}
