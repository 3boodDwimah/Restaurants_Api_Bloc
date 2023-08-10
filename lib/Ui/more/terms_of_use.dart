import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:untitled/bloc/data/cubitMore/cubit.dart';
import 'package:untitled/bloc/data/cubitMore/states.dart';
import 'package:untitled/cons/costomlist.dart';
import 'package:untitled/modle/InfoRetrieved.dart';
import 'package:url_launcher/url_launcher.dart';

class Terms_of_use extends StatelessWidget {
  const Terms_of_use({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (BuildContext context) => MoreCubit()..getInfoRetrieved(),
        child: BlocConsumer<MoreCubit, MoreStates>(
            listener: (context, state) {},
            builder: (context, state) {
              return Scaffold(
                appBar: AppBar(
                  backgroundColor: Color(0xffF3F3F9),
                  elevation: 2,
                  title: Text(
                    'شروط الاستخدام',
                    style: TextStyle(
                      fontFamily: 'Tajawal',
                      fontSize: 14,
                      color: const Color(0xff000000),
                      fontWeight: FontWeight.w700,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  centerTitle: true,
                  leading: Padding(
                    padding: const EdgeInsets.only(right: 22.0),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Icon(
                        Icons.arrow_back_ios_sharp,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
                body: SingleChildScrollView(
                  child: SafeArea(
                    child: Padding(
                      padding:
                          const EdgeInsets.only(left: 8.0, right: 22, top: 10),
                      child: Column(
                        children: [
                          SizedBox(
                            height: 25,
                          ),
                          Container(
                            alignment: Alignment.centerRight,
                            child: Text(
                              'شروط الاستخدام',
                              style: TextStyle(
                                fontFamily: 'Tajawal',
                                fontSize: 17,
                                color: const Color(0xffff9f0d),
                                fontWeight: FontWeight.w700,
                              ),
                              softWrap: false,
                            ),
                          ),
                          SizedBox(
                            height: 1,
                          ),
                          Container(
                              height: 80,
                              child: Text(
                                'هذا نص تجريبي لاختبار شكل و حجم النصوص و طريقة عرضهاi في هذا المكان و حجم و لون الخط حيث يتم التحكم في هذا النص وامكانية تغييرة في اي وقت عن طريق ادارة الموقع . يتم اضافة هذا النص كنص تجريبي للمعاينة فقط وهو لا يعبر عن أي موضوع محدد انما لتحديد الشكل العام للقسم او الصفحة أو الموقع.\n هذا نص تجريبي لاختبار شكل و حجم النصوص و طريقة عرضهاi في هذا المكان و حجم و لون الخط حيث يتم التحكم في هذا النص وامكانية تغييرة في اي وقت عن طريق ادارة الموقع . يتم اضافة هذا النص كنص تجريبي للمعاينة فقط وهو لا يعبر عن أي موضوع محدد انما لتحديد الشكل العام للقسم او الصفحة أو الموقع.\n هذا نص تجريبي لاختبار شكل و حجم النصوص و طريقة عرضهاi في هذا المكان و حجم و لون الخط حيث يتم التحكم في هذا النص وامكانية تغييرة في اي وقت عن طريق ادارة الموقع . يتم اضافة هذا النص كنص تجريبي للمعاينة فقط وهو لا يعبر عن أي موضوع محدد انما لتحديد الشكل العام للقسم او الصفحة أو الموقع.\n',
                                style: TextStyle(
                                  fontFamily: 'Tajawal',
                                  fontSize: 15,
                                  color: const Color(0xff505050),
                                ),
                                textAlign: TextAlign.right,
                              )),
                          SizedBox(
                            height: 25,
                          ),
                          Container(
                            padding: EdgeInsets.symmetric(horizontal: 12),
                            width: MediaQuery.of(context).size.width/1.2,
                            height: MediaQuery.of(context).size.height/4.1,
                            decoration: BoxDecoration(
                              color: const Color(0xffff9f0d),
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                            child: Column(
                              children: [
                                SizedBox(
                                  height: 15,
                                ),
                                Row(
                                  children: [
                                    Text(
                                      'تابعنا على مواقع التواصل الإجتماعي',
                                      style: TextStyle(
                                        fontFamily: 'Tajawal',
                                        fontSize: 14,
                                        color: const Color(0xffffffff),
                                        fontWeight: FontWeight.w500,
                                        height: 2.142857142857143,
                                      ),
                                      textHeightBehavior: TextHeightBehavior(
                                          applyHeightToFirstAscent: false),
                                      textAlign: TextAlign.right,
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    (MoreCubit.get(context).infoRetrieved !=
                                            null)
                                        ? buildinfo(MoreCubit.get(context)
                                            .infoRetrieved!)
                                        : CircularProgressIndicator(),
                                    /////////////////////////,
                                    SizedBox(
                                      width: 10,
                                      height: 10,
                                    ),
                                    Column(
                                      children: [
                                        SizedBox(
                                          height: 10,
                                        ),
                                        Container(
                                            width: MediaQuery.of(context).size.width/2.5,
                                            height: MediaQuery.of(context).size.height/6.5,
                                            decoration: BoxDecoration(
                                                // image: DecorationImage(
                                                //     image: AssetImage(
                                                //         "assets/images/map.png"),fit:BoxFit.cover ),
                                                color: const Color(0xffffffff),
                                                borderRadius:
                                                    BorderRadius.circular(8.0)),
                                            child: SvgPicture.asset(
                                                "assets/images/Group 39037.svg")

                                            ),
                                      ],
                                    )
                                  ],
                                )
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Text(
                            'هذا نص تجريبي لاختبار شكل و حجم النصوص و طريقة عرضهاi في هذا المكان و حجم و لون الخط حيث يتم التحكم في هذا النص وامكانية تغييرة في اي وقت عن طريق ادارة الموقع . يتم اضافة هذا النص كنص تجريبي للمعاينة فقط وهو لا يعبر عن أي موضوع محدد انما لتحديد الشكل العام للقسم او الصفحة أو الموقع.\n هذا نص تجريبي لاختبار شكل و حجم النصوص و طريقة عرضهاi في هذا المكان و حجم و لون الخط حيث يتم التحكم في هذا النص وامكانية تغييرة في اي وقت عن طريق ادارة الموقع . يتم اضافة هذا النص كنص تجريبي للمعاينة فقط وهو لا يعبر عن أي موضوع محدد انما لتحديد الشكل العام للقسم او الصفحة أو الموقع.\n هذا نص تجريبي لاختبار شكل و حجم النصوص و طريقة عرضهاi في هذا المكان و حجم و لون الخط حيث يتم التحكم في هذا النص وامكانية تغييرة في اي وقت عن طريق ادارة الموقع . يتم اضافة هذا النص كنص تجريبي للمعاينة فقط وهو لا يعبر عن أي موضوع محدد انما لتحديد الشكل العام للقسم او الصفحة أو الموقع.\n',
                            style: TextStyle(
                              fontFamily: 'Tajawal',
                              fontSize: 15,
                              color: const Color(0xff505050),
                            ),
                            textAlign: TextAlign.right,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              );
            }));
  }
}

Widget buildinfo(InfoRetrieved model) => Column(
      children: [
        SizedBox(
          height: 0,
        ),
        GestureDetector(
          onTap: (){
            launch("https://web.whatsapp.com/");

          },
          child: Row(
            children: [
              Icon(
                Icons.whatshot,
                color: Colors.white,
                size: 18,
              ),
              SizedBox(
                width: 5,
              ),
              Text(

                "014 722 592 970+",
                //  model.data!.whatsApp!,
                style: TextStyle(
                  fontFamily: 'Roboto',
                  fontSize: 12,
                  color: const Color(0xffffffff),
                  fontWeight: FontWeight.w500,
                  height: 1.125,
                ),
                textHeightBehavior:
                    TextHeightBehavior(applyHeightToFirstAscent: false),
                softWrap: false,
              )
            ],
          ),
        ),
        SizedBox(
          height: 20,
        ),
        GestureDetector(
          onTap: (){
            launch("https://www.facebook.com/");

          },
          child: Row(
            children: [
              Icon(
                Icons.facebook_outlined,
                color: Colors.white,
                size: 18,
              ),
              SizedBox(
                width: 5,
              ),
              Text(
                "Facebook",
                //model.data!.facebook!,
                style: TextStyle(
                  fontFamily: 'Tajawal',
                  fontSize: 12,
                  color: const Color(0xffffffff),
                  fontWeight: FontWeight.w500,
                  height: 1.2,
                ),
                textHeightBehavior:
                    TextHeightBehavior(applyHeightToFirstAscent: false),
                softWrap: false,
              )
            ],
          ),
        ),
        SizedBox(
          height: 20,
        ),
        GestureDetector(
          onTap: (){

            launch("https://instagram.com/active._tech?igshid=YmMyMTA2M2Y=");

          },
          child: Row(
            children: [
             Image.asset("assets/images/instpng11.png",width: 17,height: 17,),
              SizedBox(
                width: 10,
              ),
              Text(
                "Instagram",
                //   model.data!.instagram!,
                style: TextStyle(
                  fontFamily: 'Tajawal',
                  fontSize: 12,
                  color: const Color(0xffffffff),
                  fontWeight: FontWeight.w500,
                  height: 1.2,
                ),
                textHeightBehavior:
                    TextHeightBehavior(applyHeightToFirstAscent: false),
                softWrap: false,
              )
            ],
          ),
        ),
      ],
    );
