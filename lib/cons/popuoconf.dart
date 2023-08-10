import 'package:flutter/material.dart';
import 'package:untitled/cons/components.dart';
import 'package:untitled/cons/popcansel.dart';

import '../Ui/home/home1.dart';


class ValidationCode extends StatelessWidget {


  dynamic numberCheck;


   ValidationCode ({Key? key,
     required this.numberCheck
   }) : super(key: key);

  var numbercode = TextEditingController();



  @override
  Widget build(BuildContext context) {
    return       Scaffold(
      backgroundColor: Color.fromRGBO(122, 122, 122, 1).withOpacity(0.1),
      body: Stack(
          alignment: Alignment.center,
          children:[
            GestureDetector(
              onTap: (){
              //  navigateTo(context, popcanselCode());

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
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(8),
                        ),
                        width: 320,
                        height: 345,
                        child:
                        Stack(
                          alignment: Alignment.topRight,
                          children: [
                            Container(
                              padding: const EdgeInsets.only(top: 16, right: 16),

                                child: GestureDetector(
                                  onTap: (){
                                //    navigateTo(context, popcanselCode());

                                  },
                                  child: Image.asset(
                                    'assets/images/cancel.png',
                                  ),
                                ),
                            ),
                            Container(
                              alignment: Alignment.center,
                              padding: const EdgeInsets.only(top: 61),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Image.asset('assets/images/code_c.png'),
                                  const SizedBox(
                                    height: 16,
                                  ),
                                  Container(
                                    padding: const EdgeInsets.only(right: 23),
                                    alignment: Alignment.centerRight,
                                    child: const Text(
                                      'ادخل كود التحقق',
                                      style: TextStyle(
                                          fontFamily: 'tajwal',
                                          fontSize: 12,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 11,
                                  ),
                                  Container(
                                    padding: EdgeInsets.only(right: 23),
                                    alignment: Alignment.centerRight,
                                    child: RichText(
                                        text: const TextSpan(children: <TextSpan>[
                                          TextSpan(
                                              text: 'تم إرسال رمز التحقق إلى الرقم  ',
                                              style: TextStyle(
                                                color: Color.fromRGBO(153, 160, 170, 1),
                                                fontSize: 12,
                                                fontFamily: 'tajwal',
                                              )),
                                          TextSpan(
                                              text: '132231',
                                              style: TextStyle(
                                                  color: Color.fromRGBO(255, 159, 13, 1),
                                                  fontFamily: 'roboto',
                                                  fontSize: 12)),
                                        ])),
                                  ),
                                  Stack(children: [
                                    Container(
                                      margin:EdgeInsets.symmetric(horizontal: 10,) ,
                                      decoration: BoxDecoration(
                                        color: const Color(0xffe6e6ea),
                                        borderRadius: BorderRadius.circular(6.0),
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.only(
                                            left: 8.0, right: 18,),
                                        child: TextField(

controller: numbercode,
                                          onSubmitted: (value) {
                                            // if (formKey.currentState!.validate()) {
                                            //   CartCubit.get(context).DiscountCart(
                                            //     code: codeController.text,
                                            //  );
                                            //}
                                          },
                                          //  controller: codeController,
                                          decoration: InputDecoration(
                                            border: InputBorder.none,
                                            hintText: 'أدخل كود التحقق ',
                                            hintStyle: TextStyle(
                                              fontFamily: 'Tajawal',
                                              fontSize: 12,
                                              color: const Color(0xff878a95),
                                              fontWeight: FontWeight.w500,
                                              height: 1,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Positioned(
                                      left: 0,
                                      bottom: 0,
                                      child: Container(
                                        margin: EdgeInsets.symmetric(horizontal: 10),
                                          alignment: Alignment.center,
                                          width: 100,
                                          height: 48,
                                          decoration: BoxDecoration(
                                            color: const Color(0xffff9f0d),
                                            borderRadius: BorderRadius.circular(6.0),
                                            border: Border.all(
                                                width: 1.0,
                                                color: const Color(0xffff9f0d)),
                                          ),
                                          child:
                                          //(state is! LoadingDiscountCartState)
                                          // ?
                                          GestureDetector(
                                            onTap: () {
                                             // print(numberCheck);

                                              if( numberCheck == numbercode.text ){
                                                print('number${numberCheck}');
                                                print("${numbercode.text}");
                                                navigateTo(context, Home());

                                              }else(print("+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-"));
                                              // if (formKey.currentState!
                                              //     .validate()) {
                                              //   CartCubit.get(context)
                                              //       .DiscountCart(
                                              //     code: codeController.text,
                                              //   );
                                              //   }
                                            },
                                            child: Text(
                                              'تطبيق التحقق',
                                              style: TextStyle(
                                                fontFamily: 'Tajawal',
                                                fontSize: 14,
                                                color: const Color(0xffffffff),
                                                fontWeight: FontWeight.w500,
                                                height: 0.8571428571428571,
                                              ),
                                              textHeightBehavior:
                                              TextHeightBehavior(
                                                  applyHeightToFirstAscent:
                                                  false),
                                              softWrap: false,
                                            ),
                                          )
                                        // : Center(
                                        // child: CircularProgressIndicator()),
                                      ),
                                    )
                                  ]),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      TextButton(
                                        onPressed: () {

                                          print(numberCheck);

                                        },
                                        child: const Text(
                                          'إعادة إرساله خلال(50 ثانية)',
                                          style: TextStyle(
                                              color:
                                              Color.fromRGBO(255, 159, 13, 1.0),
                                              fontFamily: 'tajwal',
                                              fontSize: 10),
                                        ),
                                      ),
                                      const Text(
                                        'ألا تتلقى رمزًا؟',
                                        style: TextStyle(
                                          color: Color.fromRGBO(153, 160, 170, 1),
                                          fontSize: 10,
                                          fontFamily: 'tajwal',
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            )
                          ],
                        )),
                  ],
                ),
              ),
            ),]
      ),
    );

  }
}


