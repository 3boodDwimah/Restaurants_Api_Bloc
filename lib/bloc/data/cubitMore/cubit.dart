import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:untitled/bloc/Dio/dio_helper.dart';
import 'package:untitled/modle/CustomerReviewsResturantModel.dart';
import 'package:untitled/modle/DiscountCart.dart';
import 'package:untitled/modle/InfoRetrieved.dart';
import 'package:untitled/modle/SuggestionsModel.dart';
import 'package:untitled/modle/qr.dart';

import 'states.dart';


class MoreCubit extends Cubit<MoreStates> {
  MoreCubit() : super(MoreStatesInitialState());

  static MoreCubit get(context) => BlocProvider.of(context);

  ComplaintsAndSuggestions? suggestionsModel;

  void Suggestions({
    required String suggestions,
  }) {
    emit(LoadingSuggestionsMoreState());

    DioHelper.postData(
      url: "ComplaintsAndSuggestions",
      data:
      {
        'suggestions': suggestions,
      },
    ).then((value) {
      print(value.data);
      suggestionsModel = ComplaintsAndSuggestions.fromJson(value.data);
      emit(SuccessSuggestionsMoreState(suggestionsModel!));
    }).catchError((error) {
      print(error.toString());
      emit(ErrorSuggestionsMoreState(error.toString()));
    });
  }


  CustomerReviewsModel? model;

  void getAlldataount() {
    emit(LoadingCustomerState());
    DioHelper.getData(
      url: "customer_reviews_resturant",
    ).then((value) {
      model = CustomerReviewsModel.fromJson(value.data);
      emit(SuccessCustomerState());
    }).catchError((error) {
      print(error.toString());
      emit(ErrorCustomerState());
    });
  }


  InfoRetrieved? infoRetrieved;

  void getInfoRetrieved() {
    emit(LoadingInfoRetrievedState());
    DioHelper.getData(
      url: "infoAboutRES",
    ).then((value) {
      infoRetrieved = InfoRetrieved.fromJson(value.data);
      emit(SuccessInfoRetrievedState());
    }).catchError((error) {
      print(error.toString());
      emit(ErrorInfoRetrievedState());
    });
  }




}
