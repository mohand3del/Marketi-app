import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:marketi_app/features/home/presentation/view/home_view.dart';
import 'package:marketi_app/features/layout/presentation/view_model/cubit/states.dart';

class LayoutCubit extends Cubit<LayoutStates>
{
  LayoutCubit():super(LayoutInitialStates());
  static LayoutCubit get(context)=>BlocProvider.of(context);

  List<Widget>screens=[
    const HomeView(),
    Column(),
    Column(),
    Column(),
  ];

  int currentIndex=0;

  void changeCurrentIndex(index)
  {
    currentIndex=index;
    emit(LayoutChangeCurrentIndexStates());
  }
}