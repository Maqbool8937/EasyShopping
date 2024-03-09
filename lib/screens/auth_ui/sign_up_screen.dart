import 'package:e_commerce/screens/auth_ui/sign_in-screen.dart';
import 'package:e_commerce/utils/app_constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_keyboard_visibility/flutter_keyboard_visibility.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignupScreen> {
  @override
  Widget build(BuildContext context) {
    return KeyboardVisibilityBuilder(
      builder: (context, isKeyboardVisible) {
        return Scaffold(
          appBar: AppBar(
            title: const Text(
              'Sign Up ',
              style: TextStyle(
                  color: AppConstant.appTextColor, fontWeight: FontWeight.bold),
            ),
            centerTitle: true,
            backgroundColor: AppConstant.appSecondaryColor,
          ),
          // ignore: sized_box_for_whitespace
          body: SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            child: Container(
              width: Get.width,
              child: Column(
                children: [
                  SizedBox(height: Get.height / 20),
                  const Text(
                    'Welcome to my App',
                    style: TextStyle(
                        color: AppConstant.appSecondaryColor,
                        fontSize: 22,
                        fontWeight: FontWeight.bold),
                  ),

                  SizedBox(height: Get.height / 20),
                  Container(
                      margin: const EdgeInsets.symmetric(horizontal: 5.0),
                      width: Get.width,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextFormField(
                          cursorColor: AppConstant.appSecondaryColor,
                          keyboardType: TextInputType.emailAddress,
                          decoration: InputDecoration(
                              hintText: 'Email',
                              prefixIcon: Icon(Icons.email),
                              contentPadding:
                                  EdgeInsets.only(top: 2.0, left: 8.0),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10.0),
                              )),
                        ),
                      )),
                  Container(
                      margin: const EdgeInsets.symmetric(horizontal: 5.0),
                      width: Get.width,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextFormField(
                          cursorColor: AppConstant.appSecondaryColor,
                          keyboardType: TextInputType.emailAddress,
                          decoration: InputDecoration(
                              hintText: 'User Name',
                              prefixIcon: Icon(Icons.person),
                              contentPadding:
                                  EdgeInsets.only(top: 2.0, left: 8.0),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10.0),
                              )),
                        ),
                      )),
                  Container(
                      margin: const EdgeInsets.symmetric(horizontal: 5.0),
                      width: Get.width,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextFormField(
                          cursorColor: AppConstant.appSecondaryColor,
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                              hintText: 'Phone',
                              prefixIcon: Icon(Icons.phone_rounded),
                              contentPadding:
                                  EdgeInsets.only(top: 2.0, left: 8.0),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10.0),
                              )),
                        ),
                      )),
                  Container(
                      margin: const EdgeInsets.symmetric(horizontal: 5.0),
                      width: Get.width,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextFormField(
                          cursorColor: AppConstant.appSecondaryColor,
                          keyboardType: TextInputType.emailAddress,
                          decoration: InputDecoration(
                              hintText: 'City',
                              prefixIcon: Icon(Icons.location_pin),
                              contentPadding:
                                  EdgeInsets.only(top: 2.0, left: 8.0),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10.0),
                              )),
                        ),
                      )),
                  Container(
                      margin: const EdgeInsets.symmetric(horizontal: 5.0),
                      width: Get.width,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextFormField(
                          cursorColor: AppConstant.appSecondaryColor,
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                              hintText: 'Password',
                              prefixIcon: Icon(Icons.password),
                              suffixIcon: Icon(Icons.visibility),
                              contentPadding:
                                  EdgeInsets.only(top: 2.0, left: 8.0),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10.0),
                              )),
                        ),
                      )),

                  SizedBox(height: Get.height / 20),
                  Container(
                    width: 200,
                    decoration: BoxDecoration(
                        color: AppConstant.appSecondaryColor,
                        borderRadius: BorderRadius.circular(9)),
                    child: TextButton(
                      onPressed: () {},
                      child: const Text(
                        'SIGN UP',
                        style: TextStyle(
                          color: AppConstant.appTextColor,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: Get.height / 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Already have an account? ",
                        style: TextStyle(
                            color: AppConstant.appSecondaryColor, fontSize: 24),
                      ),
                      GestureDetector(
                        onTap: () => Get.offAll(() => SignInScreen()),
                        child: Text(
                          'Sign In',
                          style: TextStyle(
                              color: AppConstant.appSecondaryColor,
                              fontWeight: FontWeight.bold,
                              fontSize: 24),
                        ),
                      )
                    ],
                  )

                  // Material(
                  //   // ignore: sized_box_for_whitespace, avoid_unnecessary_containers
                  //   child: Container(
                  //       height: Get.height / 12,
                  //       width: Get.width / 12,
                  //       decoration: BoxDecoration(
                  //         color: AppConstant.appSecondaryColor,
                  //         borderRadius: BorderRadius.circular(24.0),
                  //       ),
                  //       child: TextButton(
                  //         onPressed: () {},
                  //         child: const Text(
                  //           'Sign in ',
                  //           style: TextStyle(
                  //               color: AppConstant.appTextColor, fontSize: 20.0),
                  //         ),
                  //       )),
                  // ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
