import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mistikist_flutter/carousel.dart';
import 'package:mistikist_flutter/user.dart';

import 'container.dart';
import 'controllers/page1_controller.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key, this.onTap});
  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<Page1Controller>();

    return SingleChildScrollView(
      child: Column(
        children: [
          const Padding(
              padding: EdgeInsets.only(left: 50.0),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Recommended",
                  style: TextStyle(fontWeight: FontWeight.w500, fontSize: 21, color: Colors.white),
                ),
              )),
          const SizedBox(
            height: 10,
          ),
          CarouselSlider(
            options: CarouselOptions(enableInfiniteScroll: false, height: 280),
            items: User.myUsers.map((e) {
              return Padding(
                padding: const EdgeInsets.only(right: 16.0),
                child: MyCarousel(
                  user: e,
                ),
              );
            }).toList(),
          ),
          const SizedBox(
            height: 15,
          ),
          const Padding(
            padding: EdgeInsets.only(left: 45.0),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "Category",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 21, color: Colors.white),
              ),
            ),
          ),
          ...User.myUsers.map(
            (e) => GestureDetector(
                onTap: () {
                  controller.selectedUser.value = e;
                },
                child: MyContainer(user: e)),
          ),
          const SizedBox(
            height: 100,
          )
        ],
      ),
    );
  }
}
