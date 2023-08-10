import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class costomproductdita extends StatelessWidget {
  final String image;
  final String text1;
  final String text2;
  final String text3;
  final String text4;
  final String number;
  final String number2;
  final String number3;
  final void Function()? onPressed;

  costomproductdita(
      {Key? key,
      required this.image,
      required this.text1,
      required this.text2,
      this.onPressed,
      required this.text3,
      required this.text4,
      required this.number,
      required this.number2,
      required this.number3})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return
      Container(
      padding: EdgeInsets.symmetric(horizontal: 10),
      width: 360,
      height: 188,
      decoration: BoxDecoration(
        color: const Color(0xffFFFFFF),
        borderRadius: BorderRadius.circular(6.0),
        boxShadow: [
          BoxShadow(
            color: const Color(0xffe7eaf0),
            offset: Offset(0, 8),
            blurRadius: 15,
          ),
        ],
      ),
      //
      child: Row(
        children: [
          SvgPicture.asset(image),
          SizedBox(
            width: 8,
          ),
          SvgPicture.string(
            '<svg viewBox="286.0 269.0 1.0 177.0" ><path transform="translate(286.0, 269.0)" d="M 0 0 L 0 177" fill="none" stroke="#000000" stroke-width="0.8099999940395355" stroke-dasharray="12 12" stroke-miterlimit="5" stroke-linecap="butt" /></svg>',
            allowDrawingOutsideViewBox: true,
            fit: BoxFit.fill,
          ),
          Column(
            children: [
              SizedBox(
                height: 20,
              ),
              Row(children: [
                SizedBox(
                  width: 7,
                ),
                SizedBox(
                  width: 8,
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 2.0),
                  child: Container(
                    //     padding: EdgeInsets.symmetric(vertical: 20,horizontal: 20),
                    width: 265,
                    height: 150,
                    color: Colors.white,
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Container(
                              alignment: Alignment.centerRight,
                              width: 120,
                              child: Text(
                                text1,
                                style: TextStyle(
                                  fontFamily: 'Tajawal',
                                  fontSize: 13,
                                  color: const Color(0xff272a34),
                                  fontWeight: FontWeight.w500,
                                  height: 1,
                                ),
                                textHeightBehavior: TextHeightBehavior(
                                    applyHeightToFirstAscent: false),
                                softWrap: false,
                              ),
                            ),
                            SizedBox(
                              width: 23,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 10.0),
                              child: Row(
                                children: [
                                  Image.asset("assets/images/muns.png"),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Text(number),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Image.asset(
                                      "assets/images/Iconly-Light-Plus.png")
                                ],
                              ),
                            ),
                            SizedBox(
                              width: 2,
                            ),
                            Icon(
                              Icons.delete_outline,
                              color: Color(0xffff9f0d),
                            )
                          ],
                        ),
                        Row(
                          children: [
                            Text(
                              'مع',
                              style: TextStyle(
                                fontFamily: 'Tajawal',
                                fontSize: 12,
                                color: const Color(0xffff9f0d),
                                fontWeight: FontWeight.w700,
                                height: 1,
                              ),
                              textHeightBehavior: TextHeightBehavior(
                                  applyHeightToFirstAscent: false),
                              softWrap: false,
                            ),
                          ],
                        ),
                        SizedBox(height: 10,),
                        Row(
                          children: [
                            Container(
                              alignment: Alignment.centerRight,
                              width: 120,
                              child: Text(
                                text2,
                                style: TextStyle(
                                  fontFamily: 'Tajawal',
                                  fontSize: 13,
                                  color: const Color(0xff272a34),
                                  height: 1.0909090909090908,
                                ),
                                textHeightBehavior: TextHeightBehavior(
                                    applyHeightToFirstAscent: false),
                                softWrap: false,
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            SizedBox(
                              width: 22,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 10.0),
                              child: Row(
                                children: [
                                  Image.asset("assets/images/muns.png"),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Text(number2),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Image.asset(
                                      "assets/images/Iconly-Light-Plus.png")
                                ],
                              ),
                            ),

                            Icon(Icons.delete_outline, color: Color(0xffff9f0d))
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            Container(
                              alignment: Alignment.centerRight,
                              width: 120,
                              child: Text(
                                text3,
                                style: TextStyle(
                                  fontFamily: 'Tajawal',
                                  fontSize: 13,
                                  color: const Color(0xff272a34),
                                ),
                                textHeightBehavior: TextHeightBehavior(
                                    applyHeightToFirstAscent: false),
                                softWrap: false,
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            SizedBox(
                              width: 22,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 10.0),
                              child: Row(
                                children: [
                                  Image.asset("assets/images/muns.png"),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Text(number3),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Image.asset(
                                      "assets/images/Iconly-Light-Plus.png")
                                ],
                              ),
                            ),
                            SizedBox(
                              width: 1,
                            ),
                            Icon(Icons.delete_outline, color: Color(0xffff9f0d))
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            Text(
                              text4,
                              style: TextStyle(
                                fontFamily: 'Tajawal',
                                fontSize: 19,
                                color: const Color(0xffff9f0d),
                                fontWeight: FontWeight.w500,
                                height: 0.8947368421052632,
                              ),
                              textHeightBehavior: TextHeightBehavior(
                                  applyHeightToFirstAscent: false),
                              softWrap: false,
                            ),
                            SizedBox(
                              width: 3,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 4.0),
                              child: Image.asset(
                                "assets/images/Currency.png",
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ]),
            ],
          ),
        ],
      ),
    );
  }
}
//SvgPicture.string(
//     '<svg viewBox="286.0 269.0 1.0 177.0" ><path transform="translate(286.0, 269.0)" d="M 0 0 L 0 177" fill="none" stroke="#707070" stroke-width="0.25" stroke-dasharray="5 5" stroke-miterlimit="4" stroke-linecap="butt" /></svg>',
//     allowDrawingOutsideViewBox: true,
//     fit: BoxFit.fill,
//   )
