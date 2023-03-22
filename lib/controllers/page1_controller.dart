import 'package:get/get.dart';
import 'package:mistikist_flutter/user.dart';

class Page1Controller extends GetxController {
  final selectedUser = User.myUsers.first.obs;
  final selectedNav = 0.obs;
}
