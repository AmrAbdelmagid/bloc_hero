// import 'package:bloc_hero/business_logic/cubits/counter_cubit/counter_cubit.dart';
// import 'package:bloc_test/bloc_test.dart';
// import 'package:flutter_test/flutter_test.dart';

// main() {
//   group('CounterCubit', () {
//     CounterCubit? counterCubit;

//     setUp(() {
//       counterCubit = CounterCubit();
//     });

//     tearDown(() {
//       counterCubit!.close();
//     });

//     test(
//         'the initial state for the CounterCubit is CounterState(counterValue: 0)',
//         () {
//       expect(counterCubit!.state, CounterState(counterValue: 0));
//     });

//     blocTest(
//         'the cubit should emit CounterState(counterValue: 1,' +
//             'wasIncremented: true) when the cubit.increment() function is called',
//         build: () => CounterCubit(),
//         act: (cubit) => (cubit as CounterCubit).increment(),
//         expect: () => [
//               CounterState(counterValue: 1, wasIncremented: true),
//             ]);

//     blocTest(
//         'the cubit should emit CounterState(counterValue: -1,' +
//             'wasIncremented: true) when the cubit.increment() function is called',
//         build: () => CounterCubit(),
//         act: (cubit) => (cubit as CounterCubit).decrement(),
//         expect: () => [
//               CounterState(counterValue: -1, wasIncremented: false),
//             ]);
//   });
// }
