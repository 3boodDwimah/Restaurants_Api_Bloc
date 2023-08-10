import 'package:flutter/material.dart';
import 'package:untitled/Ui/cart/carth.dart';
import 'package:untitled/cons/components.dart';

class Rastra extends StatefulWidget {
  const Rastra(
      {Key? key,
      required this.number_table,
      required this.date_expect})
      : super(key: key);

  final String number_table;
  final String date_expect;

  @override
  _RastraState createState() => _RastraState();
}

class _RastraState extends State<Rastra> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromRGBO(122, 122, 122, 1).withOpacity(0.1),
        body: Container(
          child: Stack(
            alignment: Alignment.center,
            children: [
              GestureDetector(
                onTap: () {
                  navigateAndFinish(context, Cart1());
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
                                    navigateAndFinish(context, Cart1());
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
                                      height: 15,
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
                                      height: 25,
                                    ),
                                    Column(
                                      children: [
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceAround,
                                          children: [
                                            const Text('رقم الطلب ',
                                                style: TextStyle(
                                                    fontSize: 16,
                                                    fontFamily: 'tajwal')),
                                            Text(
                                              widget.number_table,
                                              style: const TextStyle(
                                                fontSize: 12,
                                                color: Color.fromRGBO(
                                                  112,
                                                  112,
                                                  112,
                                                  1,
                                                ),
                                                fontFamily: 'roboto',
                                              ),
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
                                            const Text(
                                              'تاريخ الطلب',
                                              style: TextStyle(
                                                  fontSize: 16,
                                                  fontFamily: 'tajwal'),
                                            ),
                                            Text(
                                              '${widget.date_expect}       ',
                                              style: const TextStyle(
                                                  fontSize: 12,
                                                  color: Color.fromRGBO(
                                                    112,
                                                    112,
                                                    112,
                                                    1,
                                                  ),
                                                  fontFamily: 'roboto'),
                                            )
                                          ],
                                        ),
                                        const SizedBox(
                                          height: 10,
                                        ),

                                      ],
                                    ),
                                    const SizedBox(
                                      height: 20,
                                    ),
                                    Text(
                                      'تم ارسال طلبك بنجاح\nستصل وجبتك بالوقت المحدد - استمتع بالطعم ',
                                      style: TextStyle(
                                        fontFamily: 'Tajawal',
                                        fontSize: 12,
                                        color: const Color(0xffff9f0d),
                                        height: 1.3333333333333333,
                                      ),
                                      textHeightBehavior: TextHeightBehavior(applyHeightToFirstAscent: false),
                                      textAlign: TextAlign.center,
                                      softWrap: false,
                                    ),

                                    // const SizedBox(height: 20,)
                                  ],
                                ),
                              )
                            ],
                          )),
                      const SizedBox(
                        height: 40,
                      ),
                      InkWell(
                        onTap: () {},
                        child: Container(
                          width: 300,
                          height: 48,
                          alignment: Alignment.center,
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                              color: Color.fromRGBO(255, 159, 13, 0.9),
                              borderRadius: BorderRadius.circular(8)),
                          child: const Text(
                            ' موافق ',
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
