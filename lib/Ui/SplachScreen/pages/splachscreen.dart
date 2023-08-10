import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';
import 'package:untitled/Ui/choos/choos.dart';

import '../../../cons/components.dart';

class SplachScreen extends StatefulWidget {
  @override
  _SplachScreenState createState() => _SplachScreenState();
}

class _SplachScreenState extends State<SplachScreen> {
  void delay() {
    Future.delayed(const Duration(milliseconds: 4000), () {
      navigateAndFinish(
        context,
        Choos(),
      );
    });
  }

  @override
  void initState() {
    delay();
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF3F3F9),

      body: SafeArea(
        child: Center(
          child: SvgPicture.asset(
            'assets/images/splacscreen.svg',

            // height: 80,
            // width: 80,
          ),
        ),
      ),
    );
  }
}
