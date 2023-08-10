
import 'package:untitled/modle/DiscountCart.dart';

abstract class MoreStates {}

class MoreStatesInitialState extends MoreStates {}



class LoadingDiscountMoreState extends MoreStates {}

class SuccessDiscountMoreState extends MoreStates {

  final  discountCart;

  SuccessDiscountMoreState(this.discountCart);


}

class ErrorDiscountMoreState extends MoreStates {}


class LoadingSuggestionsMoreState extends MoreStates {}

class SuccessSuggestionsMoreState extends MoreStates {

  final  Suggestions;

  SuccessSuggestionsMoreState(this.Suggestions);


}

class ErrorSuggestionsMoreState extends MoreStates {

  final String error;

  ErrorSuggestionsMoreState(this.error);


}

class LoadingCustomerState extends MoreStates {}

class SuccessCustomerState extends MoreStates {}

class ErrorCustomerState extends MoreStates {}


class LoadingInfoRetrievedState extends MoreStates {}

class SuccessInfoRetrievedState extends MoreStates {}

class ErrorInfoRetrievedState extends MoreStates {}


