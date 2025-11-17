import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('HomeView'), centerTitle: true),
      body: Center(
        child: Column(
          children: [
            ElevatedButton(
              child: Text('ثبت نام'),
              onPressed: () {
                Get.toNamed('/register');
              },
            ),
            ElevatedButton(
              child: Text('ورود'),
              onPressed: () {
                Get.toNamed('/login');
              },
            ),
          ],
        ),
      ),
    );
  }
}
