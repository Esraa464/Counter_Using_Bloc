import 'package:counter_bloc/views/counterScreen/states/counter_states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterCubit extends Cubit<CounterStates> {
  CounterCubit() : super(InitialState());

  static CounterCubit of(context) => BlocProvider.of(context);
  int counter = 0;

  void plus() {
    counter++;
    emit(PlusState());
  }

  void minus() {
    if (counter > 1) counter--;
    emit(MinusState());
  }
}
