import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:untitled/bloc/Dio/dio_helper.dart';

import 'package:untitled/bloc/data/cubitsearch/states.dart';
import 'package:untitled/bloc/data/cubitsreviews/states.dart';
import 'package:untitled/modle/Search.dart';
import 'package:untitled/modle/SendReviews.dart';
import 'package:untitled/modle/customerreviews.dart';

class ReviewsCubit extends Cubit<ReviewsStates> {
  ReviewsCubit() : super(ReviewsInitialState());

  static ReviewsCubit get(context) => BlocProvider.of(context);

  CustomerReviews? customerReviews;
  void getreviews() {
    emit(ReviewsLoadingState());

    DioHelper.getData(
      url: "customerReviews",
    ).then((value) {
      customerReviews = CustomerReviews.fromJson(value.data);
      emit(ReviewsSuccessState());
    }).catchError((error) {
      print(error.toString());
      emit(ReviewsErrorState());
    });
  }

  ReviewModel? reviewModel ;

  void userReviews({
    required String customer_name,
    required String review_value,
    required String review_description,

  })
  {
    emit(ReviewSendLoadingState());

    DioHelper.postData(
      url: "addNewReviews",
      data:
      {
        'customer_name': customer_name,
        'review_value': review_value,
        'review_description': review_description,
      },
    ).then((value)
    {
      print(value.data);
      reviewModel = ReviewModel.fromJson(value.data);
      emit(ReviewsSendSuccessState(reviewModel!));
    }).catchError((error)
    {
      print(error.toString());
      emit(ReviewsSendErrorState(error.toString()));
    });
  }

}