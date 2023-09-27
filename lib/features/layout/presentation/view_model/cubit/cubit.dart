import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:marketi_app/features/layout/presentation/view_model/cubit/states.dart';

class LayoutCubit extends Cubit<LayoutStates>
{
  LayoutCubit():super(LayoutInitialStates());
  static LayoutCubit get(context)=>BlocProvider.of(context);

  int currentIndex=0;

  void changeCurrentIndex(index)
  {
    currentIndex=index;
    emit(LayoutChangeCurrentIndexStates());
  }
}