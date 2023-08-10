import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';
import 'package:untitled/Ui/barcode/barcode.dart';
import 'package:untitled/Ui/barcode/ha.dart';
import 'package:untitled/Ui/home/home1.dart';
import 'package:untitled/cons/cache_helper.dart';

import '../../cons/components.dart';

class Choos extends StatefulWidget {
  const Choos({Key? key}) : super(key: key);

  @override
  State<Choos> createState() => _ChoosState();
}

class _ChoosState extends State<Choos> {
  String barcode = 'Unknown';

  @override
  Widget build(BuildContext context) {
    Random random = Random() ;
    DateTime startTime = DateTime.now();
    Duration duration = Duration(seconds: 900);


    //
    //
    //
    //MediaQuery
    //
    //
    //
    //
    //




    return Scaffold(
      backgroundColor: Color(0xffF3F3F9),
      body: Stack(children: [
        Image.asset(
          "assets/images/1111.png",
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          fit: BoxFit.cover,
        ),
        Positioned(
          bottom: 160,
          right: 30,
          child: Center(
            child: GestureDetector(
              onTap: () {
                CacheHelper.sharedPreferences?.setInt("val", 0);
                print(CacheHelper.sharedPreferences!.get("val"));


                navigateAndFinish(
                  context,
                  Barcode(),
                );
              },
              child: Container(
                height: 60,
                width:MediaQuery.of(context).size.width/1.18,
                //MediaQuery.of(context).size.width/1,
                decoration: BoxDecoration(
                  color: const Color(0xffff9f0d),
                  borderRadius: BorderRadius.circular(8.0),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    children: [
                      Image.asset("assets/images/2.png",height: 30),
                      SizedBox(
                        width: 20,
                      ),
                      Text(
                        'الطلب داخل المطعم',
                        style: TextStyle(
                          fontFamily: 'Tajawal',
                          fontSize: 18,
                          color: const Color(0xffffffff),
                          fontWeight: FontWeight.w700,
                        ),
                        textAlign: TextAlign.right,
                        softWrap: false,
                      ),
                    ],
                  ),
                ),
             ),
            ),
           ),
        ),
        Positioned(
          bottom: 90,
          right: 30,
          child: Center(
            child:

            GestureDetector(
              onTap:(){
                DateTime endTime = startTime.add(duration);

                CacheHelper.sharedPreferences?.setString("dil", "delivery${endTime.hour}:${endTime.minute}:${endTime.second}${random.nextInt(100000)}");
                CacheHelper.sharedPreferences?.setInt("val", 1);
                print(CacheHelper.sharedPreferences!.get("val"));
                print(CacheHelper.sharedPreferences!.get("dil"));

                navigateAndFinish(context, Home());

              } ,
              child: Container(
                height: 60,
                width:MediaQuery.of(context).size.width/1.18,
                decoration: BoxDecoration(
                    color: const Color(0xffffffff),
                    borderRadius: BorderRadius.circular(8.0),
                    boxShadow: [
                      BoxShadow(
                        color: const Color(0x38000000),
                        offset: Offset(0, 3),
                        blurRadius: 10,
                      )
                    ]),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Row(
                    children: [
                      Image.asset("assets/images/1.png",),
                      SizedBox(
                        width: 20,
                      ),
                      Text(
                          'الطلب ديليفري',
                          style: TextStyle(
                            fontFamily: 'Tajawal',
                            fontSize: 17,
                            color: const Color(0xff484848),
                            fontWeight: FontWeight.w700,
                          ),
                          textAlign: TextAlign.right,
                          softWrap: false,
                        ),

                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
        Positioned(
            bottom: 50,
            left: 40,
            child: GestureDetector(
              onTap: (){
                CacheHelper.sharedPreferences?.setInt("val", 2);
                print(CacheHelper.sharedPreferences!.get("val"));
                navigateAndFinish(context, Home());

              },
              child: Text.rich(
                TextSpan(
                  style: TextStyle(
                    fontFamily: 'SF UI  Text',
                    fontSize: 15,
                    color: const Color(0xff878a99),
                  ),
                  children: [
                    TextSpan(
                      text: 'تريد تصفح الوجبات؟ ',
                    ),
                    TextSpan(

                      text: 'اذهب لقائمة الطعام',
                      style: TextStyle(
                        color: const Color(0xffff9f0d),
                      ),
                    ),
                  ],
                ),
                textHeightBehavior:
                    TextHeightBehavior(applyHeightToFirstAscent: false),
                softWrap: false,
              ),
            ))
      ]),
    );
  }
  Future<void> scanBarcode() async {
    try {
      final barcode = await FlutterBarcodeScanner.scanBarcode(
        '#ff6666',
        'Cancel',
        true,
        ScanMode.BARCODE,
      );

      if (!mounted) return;

      setState(() {
        this.barcode = barcode;
      });
    } on PlatformException {
      barcode = 'Failed to get platform version.';
    }
  }
}

