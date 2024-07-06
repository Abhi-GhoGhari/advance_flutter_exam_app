import 'package:advance_flutter_exam_app/view/screen/page/home_page/home_page.dart';
import 'package:advance_flutter_exam_app/view/screen/page/signup_page/signup_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';

import 'view/screen/page/login_page/login_page.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      getPages: [
        GetPage(
          name: '/',
          page: () => const LoginPage(),
        ),
        GetPage(
          name: '/home_page',
          page: () => const HomePage(),
        ),
        GetPage(
          name: '/singhup_page',
          page: () => const SignupPage(),
        ),
      ],
    );
  }
}
