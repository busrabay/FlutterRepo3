import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mistikist_flutter/controllers/page1_controller.dart';

class PageOne extends StatelessWidget {
  const PageOne({super.key, this.onTap});
  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<Page1Controller>();
    return const Scaffold(
      body: Center(
        child: Text(
          "WELCOME TO PAGE ONE",
          style: TextStyle(color: Colors.amberAccent, fontSize: 30, fontWeight: FontWeight.w900),
        ),
      ),
    );
  }
}
