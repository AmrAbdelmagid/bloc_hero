part of 'counter_cubit.dart';

class CounterState {
  CounterState({
    required this.counterValue,
    this.wasIncremented,
  });
  bool? wasIncremented;
  int counterValue;
}
