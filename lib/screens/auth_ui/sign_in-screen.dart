import 'package:e_commerce/screens/auth_ui/sign_up_screen.dart';
import 'package:e_commerce/utils/app_constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_keyboard_visibility/flutter_keyboard_visibility.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  @override
  Widget build(BuildContext context) {
    return KeyboardVisibilityBuilder(
      builder: (context, isKeyboardVisible) {
        return Scaffold(
          appBar: AppBar(
            title: const Text(
              'Sign In ',
              style: TextStyle(
                  color: AppConstant.appTextColor, fontWeight: FontWeight.bold),
            ),
            centerTitle: true,
            backgroundColor: AppConstant.appSecondaryColor,
          ),
          // ignore: sized_box_for_whitespace
          body: SingleChildScrollView(
            child: Container(
              width: Get.width,
              child: Column(
                children: [
                  isKeyboardVisible
                      ? const Text(
                          'Welcome to my App',
                          style: TextStyle(
                              color: AppConstant.appSecondaryColor,
                              fontWeight: FontWeight.bold,
                              fontSize: 20),
                        )
                      : Column(
                          children: [Lottie.asset('assets/images/lottie.json')],
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
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 10.0),
                    alignment: Alignment.centerRight,
                    child: const Text(
                      'Forget Password',
                      style: TextStyle(
                          color: AppConstant.appSecondaryColor,
                          fontWeight: FontWeight.bold,
                          fontSize: 18),
                    ),
                  ),
                  SizedBox(height: Get.height / 20),
                  Container(
                    width: 200,
                    decoration: BoxDecoration(
                        color: AppConstant.appSecondaryColor,
                        borderRadius: BorderRadius.circular(9)),
                    child: TextButton(
                      onPressed: () {},
                      child: const Text(
                        'SIGN IN',
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
                        "Don't have an account? ",
                        style: TextStyle(
                            color: AppConstant.appSecondaryColor, fontSize: 24),
                      ),
                      GestureDetector(
                        onTap: () => Get.offAll(() => SignupScreen()),
                        child: Text(
                          'Sign Up',
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
