import 'package:flutter/material.dart';
import 'package:untitled/Ui/home/home1.dart';
import 'package:untitled/cons/components.dart';

class Barcode extends StatelessWidget {
  const Barcode({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          child: Center(
            child: Column(
              children: [
                SizedBox(
                  height: 50,
                ),
                Text(
                  'امسح البار كود على الطاولة',
                  style: TextStyle(
                    fontFamily: 'SF Pro Display',
                    fontSize: 23,
                    color: const Color(0xff000000),
                    letterSpacing: 0.00575,
                    fontWeight: FontWeight.w600,
                    height: 1.2173913043478262,
                  ),
                  textHeightBehavior:
                      TextHeightBehavior(applyHeightToFirstAscent: false),
                  textAlign: TextAlign.right,
                  softWrap: false,
                ),
                SizedBox(
                  height: 40,
                ),
                Image.asset("assets/images/barcood.png"),
                SizedBox(
                  height: 200,
                ),
                GestureDetector(
                  onTap: () {
                    navigateAndFinish(
                      context,
                      Home(),
                    );
                  },
                  child: Container(
                    alignment: Alignment.center,
                    width: 343,
                    height: 50,
                    decoration: BoxDecoration(
                      color: const Color(0xffff9f0d),
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    child: Text(
                      'تخطي',
                      style: TextStyle(
                        fontFamily: 'SF Pro Display',
                        fontSize: 17,
                        color: const Color(0xffffffff),
                        fontWeight: FontWeight.w700,
                      ),
                      textAlign: TextAlign.center,
                      softWrap: false,
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
