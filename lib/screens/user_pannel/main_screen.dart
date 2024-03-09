import 'package:e_commerce/utils/app_constant.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text(AppConstant.appMainName),
          centerTitle: true,
          backgroundColor: AppConstant.appMainColor),
    );
  }
}
