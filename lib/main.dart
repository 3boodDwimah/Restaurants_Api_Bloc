import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:geolocator/geolocator.dart';
import 'package:untitled/Ui/barcode/aaa.dart';
import 'package:untitled/Ui/barcode/barcode.dart';
import 'package:untitled/Ui/barcode/ha.dart';
import 'package:untitled/bloc/Dio/dio_helper.dart';
import 'package:untitled/bloc/data/cubithome/cubit.dart';
import 'package:untitled/bloc/data/cubithome/states.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:untitled/cons/delivery.dart';


import 'Ui/SplachScreen/pages/splachscreen.dart';
import 'cons/cache_helper.dart';
import 'Ui/map/map.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  DioHelper.init();
  await CacheHelper.init();
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return
      MultiBlocProvider(
          providers: [
            BlocProvider(create: (context) => HomeCubit()..getDiscountsData()..getCategoriesData()

            ),
          ],
          child:

          BlocConsumer<HomeCubit, HomeStates>(
              listener: (context, state) {},
              builder: (context, state) {
                return MaterialApp(
                    debugShowCheckedModeBanner: false,
                    localizationsDelegates: [
                      GlobalMaterialLocalizations.delegate,
                      GlobalWidgetsLocalizations.delegate,
                      GlobalCupertinoLocalizations.delegate,
                    ],
                    supportedLocales: [
                      Locale('ar', 'AE'),
                    ],
                    home: SplachScreen());
              })
      );
  }
}
