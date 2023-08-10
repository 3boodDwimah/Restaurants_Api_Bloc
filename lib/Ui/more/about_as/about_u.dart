import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:untitled/bloc/data/cubitCart/cubit.dart';
import 'package:untitled/bloc/data/cubitCart/states.dart';
import 'package:untitled/modle/CustomerReviewsResturantModel.dart';


class About extends StatefulWidget {
  const About({Key? key}) : super(key: key);

  @override
  State<About> createState() => _AboutState();
}


class _AboutState extends State<About> {


  List<String> images = [
    'assets/images/foodToSlide1.png',
    'assets/images/foodToSlide2.png',
    'assets/images/foodToSlide3.png',
    'assets/images/foodToSlide2.png',
    'assets/images/foodToSlide1.png',
    'assets/images/foodToSlide3.png',
    'assets/images/foodToSlide1.png',
    'assets/images/foodToSlide2.png',
  ];



  @override
  Widget build(BuildContext context) {
    return  BlocProvider(
        create: (BuildContext context) => CartCubit()
         ..getAlldataount(),
        child:
        BlocConsumer<CartCubit, CartStates>(
        listener: (context, state) {
    },
    builder: (context, state) {
      return Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromRGBO(249, 249, 249, 1),
          centerTitle: true,
          elevation: 2,
          title: Text(
            'نبذة عنا',
            style: TextStyle(
              fontFamily: 'Tajawal',
              fontSize: 16,
              color: const Color(0xff000000),
              fontWeight: FontWeight.w700,
            ),
            textAlign: TextAlign.center,
          ),
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
        body: SafeArea(child: SingleChildScrollView(
          child: Column(
            children: [
              Container(child:
              Stack(
                alignment: Alignment.center,
                children: [
                  Container(
                      width: MediaQuery
                          .of(context)
                          .size
                          .width,
                      height: MediaQuery
                          .of(context)
                          .size
                          .height/3.3,
                      child: Image.asset(
                        'assets/images/aboutus.png',
                        fit: BoxFit.cover,
                      )),
                  const Text(
                    '15 عام من الخبرة',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'tajwal'),
                  ),
                ],
              ),

              ),
              Padding(
                padding: const EdgeInsets.only(right: 16.0, top: 20),
                child: Container(
                  width: MediaQuery.of(context).size.width/1,
                  child: Row(
                    children: [
                      Text(
                        'من نحن ؟',
                        textAlign: TextAlign.right,
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 17,
                            fontFamily: 'tajwal',
                            color: Color.fromRGBO(255, 159, 13, 1.0)),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.only(top: 0, right: 16, left: 16),
                child: Text(
                  'هذا نص تجريبي لاختبار شكل و حجم النصوص و طريقة عرضهاi في هذا المكان و حجم و لون الخط حيث يتم التحكم في هذا النص وامكانية تغييرة في اي وقت عن',
                  style: TextStyle(
                      fontSize: 15,
                      fontFamily: 'tajwal',
                      color: Color.fromRGBO(80, 80, 80, 1)),
                  textAlign: TextAlign.right,
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: 16, vertical: 16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    buildFoodL(
                        'assets/images/sweet.png', 80, 'حلويات '),
                    buildFoodL(
                        'assets/images/food.png', 20, 'مشروبات'),
                    buildFoodL(
                        'assets/images/drinking.png', 22, 'طعام'),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 14),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Text(
                      'تابعنا على ',
                      style: TextStyle(
                        fontWeight: FontWeight.w500,

                        fontSize: 16,
                          fontFamily: 'tajwal',
                          color: Color.fromRGBO(255, 159, 13, 1.0),

                    ),
                    ),
                    Text(
                      ' انستجرام  ',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,

                          fontSize: 17,
                        fontFamily: 'tajwal',
                          color: Colors.black

                      ),
                    ),
                  ],
                ),
              ),
              // CarouselSlider(
              //   items: images
              //       .map(
              //         (item) =>
              //
              //          Container(
              //            width: 150,height: 100,
              //            child:Image.asset(item,fit: BoxFit.cover,width: 150,) ,
              //          ),
              //
              //   )
              //       .toList(),
              //   options: CarouselOptions(
              //
              //     //height:200,
              //   //  viewportFraction: 1.5,
              //     enlargeCenterPage: true,
              //     //initialPage: 2,
              //     aspectRatio: 4
              //     ,
              //     //enableInfiniteScroll: true,
              //     //reverse: false,
              //     autoPlay: true,
              //     //autoPlayInterval: Duration(seconds: 2),
              //     //autoPlayAnimationDuration: Duration(seconds: 1),
              //     //autoPlayCurve: Curves.easeOutQuart,
              //     //scrollDirection: Axis.horizontal,
              //   ),
              // ),
              Container(
                margin:
                EdgeInsets.symmetric(horizontal: 6, vertical: 16),
                height: MediaQuery.of(context).size.height/4.3,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: images.length,
                  itemBuilder: (context, index) {
                    return Container(
                      margin: EdgeInsets.only(left: 7),
                      width: MediaQuery.of(context).size.width/3.3,
                      height: MediaQuery.of(context).size.height/5,
                      child: ClipRRect(
                          borderRadius: BorderRadius.circular(6),
                          child: Image.asset(
                            images[index],
                            fit: BoxFit.cover,
                          )
                      ),
                    );
                  },
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 14, bottom: 16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Text(
                      'زبائن سعداء',
                      style: TextStyle(
                        fontSize: 14,
                        fontFamily: 'tajwal',
                        fontWeight: FontWeight.w500,
                        color: Color.fromRGBO(255, 159, 13, 1.0),
                      ),
                    ),SizedBox(width: 5,),
                    Text(
                      'اطّلع على أراء زبائنا ',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                          fontFamily: 'tajwal',
                          color: Colors.black),
                    ),
                  ],
                ),
              ),
              (CartCubit.get(context).model != null)?
              biledCoun(CartCubit.get(context).model!,context):
                  CircularProgressIndicator()
              ,
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 16.0, top: 25),
                    child: Text(
                      'لماذا نحن هنا ؟',
                      textAlign: TextAlign.right,
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 17,
                          fontFamily: 'tajwal',
                          color: Color.fromRGBO(255, 159, 13, 1.0)),
                    ),
                  ),
                ],
              ),
              Container(
                padding: EdgeInsets.only(
                     right: 16, left: 16, bottom: 8),
                child: Text(
                  'هذا نص تجريبي لاختبار شكل و حجم النصوص و طريقة عرضهاi في هذا المكان و حجم و لون الخط حيث يتم التحكم في هذا النص وامكانية تغييرة في اي وقت عن طريق ادارة الموقع . يتم اضافة هذا النص كنص تجريبي للمعاينة فقط وهو لا يعبر عن أي موضوع محدد انما لتحديد الشكل العام للقسم او الصفحة أو الموقع.هذا نص تجريبي لاختبار شكل و حجم النصوص و طريقة عرضهاi في هذا المكان و حجم و لون الخط حيث يتم التحكم في هذا النص وامكانية تغييرة في اي وقت عن طريق ادارة الموقع . يتم اضافة هذا النص كنص تجريبي للمعاينة فقط وهو لا يعبر عن أي موضوع محدد انما لتحديد الشكل العام للقسم او الصفحة أو الموقع.هذا نص تجريبي لاختبار شكل و حجم النصوص و طريقة عرضهاi في هذا المكان و حجم و لون الخط حيث يتم التحكم في هذا النص وامكانية تغييرة في اي وقت عن طريق ادارة الموقع . يتم اضافة هذا النص كنص تجريبي للمعاينة فقط وهو لا يعبر عن أي موضوع محدد انما لتحديد الشكل العام للقسم او الصفحة أو الموقع.',
                  style: TextStyle(
                      fontSize: 15,
                      fontFamily: 'tajwal',
                      color: Color.fromRGBO(80, 80, 80, 1)),
                  textAlign: TextAlign.right,
                ),
              ),SizedBox(height: 10,)
            ],
          ),
        ),),
      );
    })
    );
  }
}

Widget biledCoun(CustomerReviewsModel model,BuildContext context) => Container(
  height: MediaQuery.of(context).size.height/4.3,
  child: ListView.builder(
    scrollDirection: Axis.horizontal,
    itemCount: CartCubit.get(context).model!.data!.length,
    itemBuilder: (ctx, i) {
      return Container(
        margin: EdgeInsets.symmetric(horizontal: 20),
        width: MediaQuery.of(context).size.width/1.28,
        height: MediaQuery.of(context).size.height/2,
        decoration: BoxDecoration(
          color: const Color(0xffffffff),
          borderRadius: BorderRadius.circular(8.0),
          boxShadow: [
            BoxShadow(
              color: const Color(0x29000000),
              offset: Offset(0, 5),
              blurRadius: 20,
            ),
          ],
        ),
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            Container(
              margin: EdgeInsets.only(left: 40, right: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  CircleAvatar(
                    radius: 15,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 20),
                    child: Text(
                      model.data![i].name!,
                      style: TextStyle(
                        fontFamily: 'Tajawal',
                        fontSize: 14,
                        color: const Color(0xff000000),
                        height: 1.2857142857142858,
                      ),
                      textHeightBehavior: TextHeightBehavior(
                          applyHeightToFirstAscent: false),
                      softWrap: false,
                    ),
                  ),
                  Spacer(),
                  Container(
                    decoration: BoxDecoration(
                      color: const Color(0xfff3f3f9),
                      borderRadius: BorderRadius.all(
                          Radius.elliptical(9999.0, 9999.0)),
                    ),
                    child: Text(model.data![i].id.toString()),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 8,
            ),
            SingleChildScrollView(
              primary: false,
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width/1.6,
                      child: Text(
model.data![i].details!,
                        style: TextStyle(
                          fontFamily: 'Tajawal',
                          fontSize: 14,
                          color: const Color(0xff000000),
                          fontWeight: FontWeight.w500,
                          height: 1.4285714285714286,
                        ),
                        textHeightBehavior: TextHeightBehavior(
                            applyHeightToFirstAscent: false),
                        textAlign: TextAlign.right,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      );
    },
  ),
);


Column buildFoodL(String icon, int n, String type) {
  return Column(
    children: [
      Image.asset('$icon'),
      Row(
        children: [
          Text(
            ' $type ',
            style: TextStyle(
              fontSize: 13,
              fontFamily: 'tajwal',
              color: Color.fromRGBO(39, 42, 52, 1),
            ),
          ),
          Text(
            ' $n ',
            style: TextStyle(
              fontSize: 16,
              fontFamily: 'tajwal',
              fontWeight: FontWeight.w500,
              color: Color.fromRGBO(255, 159, 13, 1.0),
            ),
          ),
        ],
      ),
    ],
  );
}

