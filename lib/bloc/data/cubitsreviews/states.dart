import 'package:untitled/modle/SendReviews.dart';

abstract class ReviewsStates {}

class ReviewsInitialState extends ReviewsStates {}

class ReviewsLoadingState extends ReviewsStates {}

class ReviewsSuccessState extends ReviewsStates {}

class ReviewsErrorState extends ReviewsStates {}


class ReviewSendLoadingState extends ReviewsStates {}

class ReviewsSendSuccessState extends ReviewsStates
{
  final ReviewModel reviewModel;

  ReviewsSendSuccessState(this.reviewModel);
}

class ReviewsSendErrorState extends ReviewsStates
{
  final String error;

  ReviewsSendErrorState(this.error);
}