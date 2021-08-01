part of 'counter_cubit.dart';

class CounterState extends Equatable {
  CounterState({
    required this.counterValue,
    this.wasIncremented,
  });
  final bool? wasIncremented;
  final int counterValue;

  @override
  List<Object?> get props => [this.counterValue, this.wasIncremented];
}
