import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mistikist_flutter/const.dart';
import 'package:mistikist_flutter/controllers/page1_controller.dart';
import 'package:mistikist_flutter/page_slider.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(Page1Controller());

    return Scaffold(
      extendBody: true,
      bottomNavigationBar: Container(
        margin: const EdgeInsets.symmetric(horizontal: 30, vertical: 8),
        width: 350,
        height: 68,
        decoration: BoxDecoration(
          color: const Color(0xff202020),
          borderRadius: BorderRadius.circular(22),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Obx(
            () => Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: Const.navItems
                  .asMap()
                  .entries
                  .map((kv) => GestureDetector(
                        onTap: () {
                          controller.selectedNav.value = kv.key;
                        },
                        child: AnimatedContainer(
                          duration: const Duration(milliseconds: 300),
                          width: kv.key == controller.selectedNav.value ? 60 : 30,
                          color: kv.key == controller.selectedNav.value
                              ? Colors.white
                              : const Color(0xff202020),
                          child: Icon(kv.value.icon),
                        ),
                      ))
                  .toList(),
            ),
          ),
        ),
      ),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        centerTitle: false,
        title: const Text(
          "World Cuisines",
          style: TextStyle(
            fontWeight: FontWeight.w400,
            fontSize: 20,
            color: Colors.white,
          ),
          textAlign: TextAlign.left,
        ),
        actions: [
          const Icon(
            Icons.filter_alt_outlined,
            color: Colors.grey,
          ),
          const SizedBox(
            width: 15,
          ),
          const Icon(
            Icons.search_rounded,
            color: Colors.grey,
          ),
          const SizedBox(
            width: 15,
          ),
          Obx(
            () => CircleAvatar(
              backgroundImage: AssetImage(controller.selectedUser.value.image_user),
            ),
          ),
          const SizedBox(
            height: 100,
          ),
        ],
      ),
      backgroundColor: Colors.black,
      body: Obx(() => PageSlider.pages[controller.selectedNav.value]),
    );
  }
}
