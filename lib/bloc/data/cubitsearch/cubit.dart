import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:untitled/bloc/Dio/dio_helper.dart';
import 'package:untitled/bloc/data/cubitsearch/states.dart';
import 'package:untitled/modle/Search.dart';

class SearchCubit extends Cubit<SearchStates> {
  SearchCubit() : super(SearchInitialState());

  static SearchCubit get(context) => BlocProvider.of(context);

  SearchModel? searchModel;

  void search(String test) {
    emit(SearchLoadingState());

    DioHelper.postData(
      url: "search",

      data: {
    "search" : test,


      },
    ).then((value)
    {
      searchModel = SearchModel.fromJson(value.data);

      emit(SearchSuccessState());
    }).catchError((error)
    {
      print(error.toString());
      emit(SearchErrorState());
    });
  }




}