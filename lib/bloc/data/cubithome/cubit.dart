import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:untitled/bloc/Dio/dio_helper.dart';
import 'package:untitled/modle/NewProducts.dart';
import 'package:untitled/modle/ProductModel.dart';
import 'package:untitled/modle/Productsdettails.dart';
import 'package:untitled/modle/ProductsendModel.dart';
import 'package:untitled/modle/discounts.dart';
import 'states.dart';
class HomeCubit extends Cubit<HomeStates> {
  HomeCubit() : super(HomeStatesInitialState());

  static HomeCubit get(context) => BlocProvider.of(context);


  DiscountsModle? discountsModle;

  void getDiscountsData() {
    emit(ShopLoadingDiscountsState());

    DioHelper.getData(
      url: "discounts",
    ).then((value) {
      discountsModle = DiscountsModle.fromJson(value.data);
      emit(ShopSuccessDiscountsState());
    }).catchError((error) {
      print(error.toString());
      emit(ShopErrorDiscountsState());
    });
  }


  NewproductsModel? newproductsModel;

  void getCategoriesData() {
    emit(ShopLoadingProductsState());
    DioHelper.getData(
      url: 'sendProducts'

      ,
    ).then((value) {

      newproductsModel = NewproductsModel.fromJson(value.data);
      print(value.data);
      emit(ShopSuccessProductsState());
    }).catchError((error) {
      print(error.toString());
      emit(ShopErrorProductsState());
    });
  }





}
  //





