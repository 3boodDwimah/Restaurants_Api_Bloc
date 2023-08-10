import 'package:untitled/modle/DiscountCart.dart';

abstract class CartStates {}

class CartStatesInitialState extends CartStates {}

class LoadingDiscountCartState extends CartStates {}

class SuccessDiscountCartState extends CartStates {
  final cododis;

  SuccessDiscountCartState(this.cododis);
}

class ErrorDiscountCartState extends CartStates {

  final String error;

  ErrorDiscountCartState(this.error);

}

class LoadingAlldataCartState extends CartStates {}

class SuccessAlldataCartState extends CartStates {}

class ErrorAlldataCartState extends CartStates {}

class LoadingproductCartState extends CartStates {}

class SuccessproductCartState extends CartStates {}

class ErrorproductCartState extends CartStates {}


class LoadingCustomerState extends CartStates {}

class SuccessCustomerState extends CartStates {}

class ErrorCustomerState extends CartStates {}

class LoadingDataLocationState extends CartStates {}

class SuccessDataLocationState extends CartStates {
  final update ;

  SuccessDataLocationState(this.update);


}

class ErrorDataLocationState extends CartStates {}

class LoadingDoneAddState extends CartStates {}

class SuccessDoneAddState extends CartStates {}

class ErrorDoneAddState extends CartStates {}

class LoadingCodevaliState extends CartStates {}


class SuccessCodevaliState extends CartStates {

  final codevaliModel ;
  SuccessCodevaliState(this.codevaliModel);

}

class ErrorCodevaliState extends CartStates {}



class LoadingdeleatAddState extends CartStates {}

class SuccessdeleatAddState extends CartStates {}

class ErrordeleatAddState extends CartStates {}



class LoadingupdatacountState extends CartStates {}

class SuccessupdatacountState extends CartStates {}

class ErrorupdatacountState extends CartStates {}



class LoadingdiscountState extends CartStates {}

class SuccessudiscountState extends CartStates {}

class ErrorupdiscountState extends CartStates {}