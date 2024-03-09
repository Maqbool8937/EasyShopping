import 'package:e_commerce/utils/app_constant.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:lottie/lottie.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: AppConstant.appSecondaryColor,
        title: const Text(
          'Welcome to my App',
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: AppConstant.appTextColor,
          ),
        ),
        centerTitle: true,
      ),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            // ignore: sized_box_for_whitespace
            Container(
              width: Get.width,
              child: Lottie.asset('assets/images/lottie.json'),
            ),
            Container(
              margin: const EdgeInsets.only(bottom: 8.0),
              child: const Text(
                'Happy Shopping',
                style: TextStyle(fontSize: 26.0, fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(height: 40),
            Material(
              // ignore: sized_box_for_whitespace, avoid_unnecessary_containers
              child: Container(
                height: 50,
                width: 300,
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 152, 18, 6),
                  borderRadius: BorderRadius.circular(24.0),
                ),
                child: TextButton.icon(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.facebook,
                      size: 35.0,
                    ),

                    // icon: Image.asset(
                    //   'assets/images/google.icon.png',
                    //   width: Get.width / 12,
                    //   height: Get.height / 12,
                    // ),
                    label: const Text(
                      'Sign in with google',
                      style: TextStyle(
                          color: AppConstant.appTextColor, fontSize: 20),
                    )),
              ),
            ),
            const SizedBox(height: 15),
            // TextButton.icon(
            //   onPressed: () {},
            //   icon: Icon(Icons.email),
            //   label: Text(
            //     'Sign in with gmail',
            //     style: TextStyle(color: Colors.red),
            //   ),
            // )
            Material(
              // ignore: sized_box_for_whitespace, avoid_unnecessary_containers
              child: Container(
                height: 50,
                width: 300,
                decoration: BoxDecoration(
                  color: AppConstant.appSecondaryColor,
                  borderRadius: BorderRadius.circular(24.0),
                ),
                child: TextButton.icon(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.email,
                      size: 35.0,
                    ),
                    // icon: Image.asset(
                    //   'assets/images/google.icon.png',
                    //   width: Get.width / 12,
                    //   height: Get.height / 12,
                    // ),
                    label: const Text(
                      'Sign in with Gmail',
                      style: TextStyle(
                          color: AppConstant.appTextColor, fontSize: 20.0),
                    )),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
