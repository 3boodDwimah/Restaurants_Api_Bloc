import 'package:flutter/material.dart';
import 'package:untitled/Ui/cart/cart.dart';
import 'package:untitled/Ui/cart/cart.dart';
import 'package:untitled/cons/components.dart';
import 'package:url_launcher/url_launcher.dart';

class Delivery extends StatefulWidget {


  @override
  _DeliveryState createState() => _DeliveryState();
}

class _DeliveryState extends State<Delivery> {
  @override
  Widget build(BuildContext context) {
    return

      Scaffold(
        backgroundColor: Color.fromRGBO(122, 122, 122, 1).withOpacity(0.1),
        body:
        Container(
          child: Stack(
            alignment: Alignment.center,
            children: [
              GestureDetector(
                onTap: () {
                  navigateAndFinish(context, Cart());
                },
                child: Container(
                  height: MediaQuery.of(context).size.height,
                  width: MediaQuery.of(context).size.width,
                  color: Color.fromRGBO(122, 122, 122, 1).withOpacity(0.5),
                ),
              ),
              SingleChildScrollView(
                child: Container(
                  alignment: Alignment.center,
                  child: Column(
                    children: [
                      Container(
                          alignment: Alignment.center,
                          margin: EdgeInsets.only(right: 20, left: 20),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(8),
                              boxShadow: [
                                BoxShadow(
                                    offset: Offset(0, 6),
                                    blurRadius: 10,
                                    color: Color(0x00000000).withOpacity(0.25)),
                              ]),
                          width: 300,
                          height: 365,
                          child: Stack(
                            alignment: Alignment.topRight,
                            children: [
                              Container(
                                padding: EdgeInsets.only(top: 21, right: 16),
                                child: InkWell(
                                  child: Image.asset(
                                    'assets/images/cancel.png',
                                  ),
                                  onTap: () {

                                      navigateAndFinish(context, Cart());

                                  },
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.only(top: 44),
                                alignment: Alignment.center,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Image.asset(
                                      'assets/images/icon.png',
                                    ),
                                    const SizedBox(
                                      height: 13,
                                    ),
                                    const Text(
                                      'تم الارسال بنجاح',
                                      style: TextStyle(
                                          fontSize: 26,
                                          fontWeight: FontWeight.bold,
                                          color:
                                              Color.fromRGBO(255, 159, 13, 0.9),
                                          fontFamily: 'tajwal'),
                                    ),
                                    const SizedBox(
                                      height: 18,
                                    ),
                                    Column(
                                      children: [
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceAround,
                                          children: [

                                          ],
                                        ),

                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceAround,
                                          children: [
                                            Text(
                                              '${6}       ',
                                              style: const TextStyle(
                                                  fontSize: 12,
                                                  color: Color.fromRGBO(
                                                    112,
                                                    112,
                                                    112,
                                                    1,
                                                  ),
                                                  fontFamily: 'roboto'),
                                            ),
                                            const Text(
                                              'تاريخ الطلب',
                                              style: TextStyle(
                                                  fontSize: 16,
                                                  fontFamily: 'tajwal'),
                                            )
                                          ],
                                        ),
                                        const SizedBox(
                                          height: 10,
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceAround,
                                          children: [
                                            Text(
                                              '${2}  ',
                                              style: const TextStyle(
                                                  fontSize: 12,
                                                  color: Color.fromRGBO(
                                                    112,
                                                    112,
                                                    112,
                                                    1,
                                                  ),
                                                  fontFamily: 'roboto'),
                                            ),
                                            const Text(
                                              'الوقت المتوقع',
                                              style: TextStyle(
                                                  fontSize: 16,
                                                  fontFamily: 'tajwal'),
                                            )
                                          ],
                                        ),
                                      ],
                                    ),
                                    const SizedBox(
                                      height: 18,
                                    ),
                                    const Text(
                                      '  تم ارسال اللوكيشن بنجاح\nستصل وجبتك بالوقت المحدد واستمتع بالطعم ',
                                      style: TextStyle(
                                          fontSize: 12,
                                          color:
                                              Color.fromRGBO(255, 159, 13, 0.9),
                                          fontFamily: 'tajwal'),
                                      textAlign: TextAlign.center,
                                    ),

                                    // const SizedBox(height: 20,)
                                  ],
                                ),
                              )
                            ],
                          )),
                      const SizedBox(
                        height: 37,
                      ),
                      GestureDetector(
                        onTap: () {

                          launch("https://web.whatsapp.com/");

                        },
                        child: Container(
                          width: 300,
                          height: 48,
                          alignment: Alignment.center,
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                              color: Color.fromRGBO(255, 159, 13, 0.9),
                              borderRadius: BorderRadius.circular(8)),
                          child: const Text(
                            'تواصل مع الديلفري ',
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                                fontFamily: 'tajwal'),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}

