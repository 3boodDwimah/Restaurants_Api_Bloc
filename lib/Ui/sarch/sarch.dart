import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:untitled/bloc/data/cubitsearch/cubit.dart';
import 'package:untitled/bloc/data/cubitsearch/states.dart';
import 'package:untitled/cons/components.dart';
import 'package:untitled/modle/Search.dart';


class Sarch extends StatefulWidget {
  const Sarch({Key? key}) : super(key: key);

  @override
  State<Sarch> createState() => _SarchState();
}

var controllerSearch = TextEditingController();

class _SarchState extends State<Sarch> {
  var formkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (BuildContext context) => SearchCubit(),
        child: BlocConsumer<SearchCubit, SearchStates>(
            listener: (context, state) {},
            builder: (context, state) {
              return
                Scaffold(
                  backgroundColor: Color(0xffF3F3F9),


                  appBar: AppBar(
                  backgroundColor: Color(0xffF8F8F8),
                  elevation: 1,
                  leading: Padding(
                    padding: const EdgeInsets.only(right: 22.0, bottom: 4),
                    child: IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: Icon(
                          Icons.arrow_back_ios,
                          color: Colors.black,
                        )),
                  ),
                  title: Form(
                    key: formkey,
                    child: Column(
                      children: [
                        Container(
                          height: 44,
                          decoration: BoxDecoration(
                            color: const Color(0x3d8e8e93),
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                          child: TextFormField(
                            onFieldSubmitted: (String text) {
                              SearchCubit.get(context).search(text);
                            },
                            textAlign: TextAlign.right,
                            textDirection: TextDirection.rtl,
                            controller: controllerSearch,
                            decoration: const InputDecoration(
                              prefixIcon: Icon(
                                Icons.search,
                                color: Colors.grey,
                              ),
                              contentPadding: EdgeInsets.symmetric(
                                  horizontal: 20, vertical: 5),
                              border: InputBorder.none,
                              hintText: ' بحث ',
                              hintStyle: TextStyle(
                                fontSize: 19,
                                fontFamily: 'tajwal',
                                color: Colors.grey,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        if (state is SearchLoadingState)
                          LinearProgressIndicator(),
                      ],
                    ),
                  ),
                ),
                body: Container(
                  width: MediaQuery.of(context).size.width,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        padding: EdgeInsets.only(right: 16, top: 28),
                      ),
                      if (state is SearchSuccessState)
                        Expanded(
                          child:
                          (SearchCubit.get(context).searchModel != null )?
                          ListView.separated(
                            itemBuilder: (context,i)
                            => itemList(SearchCubit.get(context).searchModel!.data![i],context,(){})
                            ,
                            separatorBuilder: (context , i) => myDivider(),
                            itemCount:SearchCubit.get(context).searchModel!.data!.length ,


                          ):CircularProgressIndicator()

                          ,
                        ),
                    ],
                  ),
                ),
              );
            }));
  }
}




Widget itemList( Data model,BuildContext context,
    void Function() onPressed) =>
    GestureDetector(
      onTap: onPressed,
      child:
      Column(
        children: [

          Container(
      decoration: BoxDecoration(
          color: Colors.white,

          borderRadius: BorderRadius.circular(
          8)),
            margin: EdgeInsets.symmetric(horizontal: 13),
            height: MediaQuery.of(context).size.height/6.4,
              child: Row(
                children: [
                  Column(
                    children: [
                      Container(
                        width:MediaQuery.of(context).size.width/1.5 ,
                        child: Column(
                          children: [
                            Container(
                              width: MediaQuery.of(context).size.width/1.46,
                              child:
                              Column(
                                children: [
                                  Container(
                                    width: MediaQuery
                                        .of(context)
                                        .size
                                        .width / 1.45,
                                    padding: EdgeInsets.only(right: 14, top: 12),
                                    child:
                                    Row(
                                      children: [

                                        Container(
                                          width: MediaQuery.of(context).size.width/2.8,
                                          child: Text(


                                            model.name.toString()
                                            , style: TextStyle(
                                            fontFamily: 'Tajawal',
                                            fontSize: 14.5,
                                            color: const Color(0xff000000),
                                            letterSpacing: -0.005329999953508377,
                                            fontWeight: FontWeight.w600,
                                            height: 1.5923076923076923,
                                          ),
                                            textHeightBehavior: TextHeightBehavior(
                                                applyHeightToFirstAscent: false),
                                            textAlign: TextAlign.right,
                                          ),
                                        ),
                                        SizedBox(
                                          width: MediaQuery.of(context).size.width/8.5,
                                        ),

                                        const SizedBox(
                                          width: 4,
                                        ),

                                        SizedBox(
                                          width:10,
                                        ),

                                      ],
                                    ),
                                  ),
                                  Container(
                                    //padding:
                                    padding: EdgeInsets.only(right: 14,left: 20,top: 1),
                                    width: MediaQuery
                                        .of(context)
                                        .size
                                        .width / 1.3,
                                    height: 35,
                                    child: Text(
                                      maxLines: 2,
                                      model.description!,


                                      style: TextStyle(
                                        fontFamily: 'Tajawal',
                                        fontSize: 12.5,
                                        color: const Color(0xff6d6d6d),
                                        height: 1,
                                      ),
                                      textHeightBehavior: TextHeightBehavior(
                                          applyHeightToFirstAscent: false),
                                      textAlign: TextAlign.right,
                                    ),
                                  ),
                                  SizedBox(height: 4,),
                                ],
                              ),
                            ),
                            Container(
                              width:MediaQuery.of(context).size.width/1.5 ,
                              child: Row(
                                children: [

                                  Container(
                                      alignment: Alignment.centerRight,
                                      padding: EdgeInsets.only(right: 15, bottom: 1),
                                      width: MediaQuery
                                          .of(context)
                                          .size
                                          .width / 1.95,
                                      child:
                                      GestureDetector(

                                        onTap: (){

                                        },
                                        child: SvgPicture.asset(
                                            "assets/images/cart.svg",
                                            height: 25,
                                            color: Color(0xffFF9F0D)),
                                      )
                                  ),
                                  Text(
                                    "${model.price!}",


                                    style: TextStyle(
                                      fontFamily: 'Tajawal',
                                      fontSize: 15,
                                      color: const Color(0xffff9f0d),
                                      fontWeight: FontWeight.w500,
                                      height: 1.2142857142857142,
                                    ),
                                    textHeightBehavior: TextHeightBehavior(
                                        applyHeightToFirstAscent: false),
                                    softWrap: false,
                                  ),
                                  SizedBox(
                                    width: 2,
                                  ),
                                  SvgPicture.asset(
                                    "assets/images/export.svg",
                                    height: 11,
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),

                      SizedBox(
                        height: 0,
                      ),

                    ],
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width/3.9,
                    height: MediaQuery.of(context).size.height/8,

                    // decoration: BoxDecoration(
                    //     borderRadius: BorderRadius.circular(
                    //         8),
                    //     image: DecorationImage(
                    //         image: NetworkImage("${model.photo!}"),
                    //         fit: BoxFit.fill)
                    // ),
                  ),
                ],
              )),
          SizedBox(
            height: 12,
          )
        ],
      )
    );

