import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class costomlist extends StatelessWidget {
  final String image;
  final String text1;
  final String text2;
   String? text3;
  final String text4;
  final int number;
  final void Function()? onPressed;
  costomlist(
      {Key? key,
      required this.image,
      required this.text1,
      required this.text2,
      this.onPressed,
       this.text3,
      required this.text4,
      required this.number})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return
      Container(
      width: double.infinity,
      height: 120,
      decoration: BoxDecoration(
        color: const Color(0xffffffff),
        border: Border.all(width: 1.0, color: const Color(0xffe9ebea)),
      ),
      child: Row(
        children: [
          Column(
            children: [
              SizedBox(
                height: 5,
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      text1,
                      style: TextStyle(
                        fontFamily: 'Tajawal',
                        fontSize: 14,
                        color: const Color(0xff000000),
                        letterSpacing: -0.005739999949932098,
                        fontWeight: FontWeight.w500,
                        height: 1.5714285714285714,
                      ),
                      textHeightBehavior: TextHeightBehavior(
                          applyHeightToFirstAscent: false),
                      textAlign: TextAlign.right,
                    ),
                  ),
                  SizedBox(
                    width: 45,
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.star,
                        color: Color(0xffFDB43F),
                      ),
                      SizedBox(
                        width: 1,
                      ),
                      Text(
                        text2,
                        style: TextStyle(
                          fontFamily: 'Tajawal',
                          fontSize: 14,
                          color: const Color(0xff272a34),
                          fontWeight: FontWeight.w500,
                          height: 0.8571428571428571,
                        ),
                        textHeightBehavior: TextHeightBehavior(
                            applyHeightToFirstAscent: false),
                        softWrap: false,
                      )
                    ],
                  ),
                ],
              ),
              Text(
               text3!,
                style: TextStyle(
                  fontFamily: 'Tajawal',
                  fontSize: 12,
                  color: const Color(0xff6d6d6d),
                  height: 2.0833333333333335,
                ),
                textHeightBehavior:
                    TextHeightBehavior(applyHeightToFirstAscent: false),
                textAlign: TextAlign.right,
              ),
              SvgPicture.string(
                '<svg viewBox="155.5 440.5 203.5 1.0" ><path transform="translate(155.5, 440.5)" d="M 203.5 0.5859375 L 0 0" fill="none" stroke="#878a99" stroke-width="1" stroke-opacity="0.15" stroke-miterlimit="4" stroke-linecap="butt" /></svg>',
                allowDrawingOutsideViewBox: true,
                fit: BoxFit.fill,
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
                      fontSize: 15,
                      color: const Color(0xffff9f0d),
                      fontWeight: FontWeight.w500,
                      height: 0.8947368421052632,
                    ),
                    textHeightBehavior:
                        TextHeightBehavior(applyHeightToFirstAscent: false),
                    softWrap: false,
                  ),
                  SizedBox(
                    width: 3,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 4.0),
                    child: Image.asset(
                      "assets/images/Currency.png",
                      width: 13,
                      height: 13,
                    ),
                  ),
                  SizedBox(width: 120,),
                 // Icon(Icons.camera_alt_outlined)
                ],
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Row(
              children: [
                Card(
                    child: Image.asset(image,
                    ))
              ],
            ),
          ),
        ],
      ),
    );
  }
}
