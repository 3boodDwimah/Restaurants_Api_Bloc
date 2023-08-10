import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:untitled/bloc/Dio/dio_helper.dart';
import 'package:untitled/bloc/data/cubitMore/cubit.dart';
import 'package:untitled/bloc/data/cubitMore/states.dart';
import 'package:untitled/cons/components.dart';

class suggestions1 extends StatefulWidget {
  const suggestions1({Key? key}) : super(key: key);

  @override
  State<suggestions1> createState() => _suggestions1State();
}

class _suggestions1State extends State<suggestions1> {
  @override
  var suggestion = TextEditingController();
  var formKey = GlobalKey<FormState>();


  @override
  Widget build(BuildContext context) {

    SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
    );
    return BlocProvider(
        create: (BuildContext context) => MoreCubit(),
        child: BlocConsumer<MoreCubit, MoreStates>(
            listener: (context, state) {
              if (state is SuccessSuggestionsMoreState) {
                if (state.Suggestions.success!) {
                  print(state.Suggestions.message);
                  showToast(
                    text: state.Suggestions.message!,
                    state: ToastStates.SUCCESS,
                  );
                } else {
                  print(state.Suggestions.message);


                }
              }
            },
            builder: (context, state) {

              return

                Scaffold(
                  backgroundColor: Color(0xffF3F3F9),
                appBar: AppBar(

                  backgroundColor: Color(0xffF8F8F8),
                  elevation: .4,
                  title: Text(
                    'الشكاوي والإقتراحات',
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
                body: SafeArea(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 16.0, right: 16),
                    child: SingleChildScrollView(
                      child: Form(
                        key: formKey,
                        child: Column(
                          children: [
                            SizedBox(
                              height: 20,
                            ),
                            Container(
                              alignment: Alignment.centerRight,
                              child: Text(
                                'نص نص نص نص ',
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
                              height: 10,
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
                              width: MediaQuery.of(context).size.width/1
                              ,
                              height:  MediaQuery.of(context).size.height/5,
                              decoration: BoxDecoration(
                                color: const Color(0xffffffff),
                                borderRadius: BorderRadius.circular(8.0),
                                boxShadow: [
                                  BoxShadow(
                                    color: const Color(0x0d000000),
                                    offset: Offset(0, 3),
                                    blurRadius: 6,
                                  ),
                                ],
                              ),
                              child: SingleChildScrollView(
                                child: Column(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Container(
                                        alignment: Alignment.centerRight,
                                        child: Text(
                                          'أكتب هنا اقتراحك ',
                                          style: TextStyle(
                                            fontFamily: 'Tajawal',
                                            fontSize: 14,
                                            color: const Color(0xff484848),
                                            fontWeight: FontWeight.w700,
                                          ),
                                          textAlign: TextAlign.right,
                                          softWrap: false,
                                        ),
                                      ),
                                    ),
                                    Container(
                                      margin:
                                          EdgeInsets.only(left: 16, right: 16),
                                      padding:
                                          EdgeInsets.only(left: 10, right: 10),
                                      decoration: BoxDecoration(
                                        color: const Color(0xfff3f3f9),
                                        borderRadius: BorderRadius.circular(8.0),
                                        boxShadow: [
                                          BoxShadow(
                                            color: const Color(0x0d000000),
                                            offset: Offset(0, 3),
                                            blurRadius: 6,
                                          ),
                                        ],
                                      ),
                                      child: TextFormField(

                                        validator: (val) {
                                          if (val!.length < 1) {
                                            return "لا يمكن  ان يترك فارغ ";
                                          }

                                          return null;
                                        },

                                      maxLines: 3,
                                        onFieldSubmitted:
                                     (value){

              if (formKey.currentState!.validate()) {
              MoreCubit.get(context).Suggestions(
              suggestions: suggestion.text,
              );
              }
              },

                                        controller: suggestion,
                                        decoration: InputDecoration(
                                          border: InputBorder.none,

                                          hintText: 'دون اقتراحك ',

                                          prefixIcon: Icon(
                                            Icons.chat_outlined,
                                            color: Color(0xff000000),
                                          ),
                                          hintStyle: TextStyle(
                                            fontFamily: 'Tajawal',
                                            fontSize: 13,
                                            color: const Color(0xff8C8C8C),
                                            fontWeight: FontWeight.w500,
                                            height: 3.0333333333333333,
                                          ),
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 30,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 7, left: 7),
                              child: GestureDetector(

                                onTap: () {
                                  FocusScope.of(context).unfocus();


                                  if (formKey.currentState!.validate()) {
                                   MoreCubit.get(context).Suggestions(
                                      suggestions: suggestion.text,

                                    );
                                   suggestion.clear();
                                  }



                                },
                                child: Container(
                                    child: Center(
                                      child: Text(
                                        "ارسال",
                                        style: TextStyle(
                                            fontSize: 18,
                                            color: Colors.white,
                                            fontWeight: FontWeight.w400),
                                      ),
                                    ),
                                    height: 50,
                                    width: double.infinity,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: Color(0xffFF9F0D),
                                    )),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              );
            }));
  }
}
