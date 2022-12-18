import 'dart:async';

import 'package:dispaly_app/utils/color.dart';
import 'package:dispaly_app/utils/route/route_name.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

    Timer(const Duration(seconds: 1),
        () => Navigator.popAndPushNamed(context, RouteName.homechUrl));
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: MyColor.whitecolor,
    );
  }
}
