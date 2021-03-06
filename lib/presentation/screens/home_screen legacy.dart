// import 'package:bloc_hero/business_logic/cubits/counter_cubit/counter_cubit.dart';
// import 'package:bloc_hero/presentation/screens/second_screen.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';

// class HomeScreen extends StatefulWidget {
//   HomeScreen({
//     Key? key,
//     required this.title,
//     required this.color,
//   }) : super(key: key);

//   final String title;
//   final Color color;

//   @override
//   _HomeScreenState createState() => _HomeScreenState();
// }

// class _HomeScreenState extends State<HomeScreen> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(widget.title),
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[
//             Text(
//               'You have pushed the button this many times:',
//             ),
//             BlocConsumer<CounterCubit, CounterState>(
//               listener: (context, state) {
//                 if (state.wasIncremented == true) {
//                   ScaffoldMessenger.of(context).showSnackBar(SnackBar(
//                     content: Text('Incremented'),
//                     duration: Duration(milliseconds: 300),
//                   ));
//                 } else if (state.wasIncremented == false) {
//                   ScaffoldMessenger.of(context).showSnackBar(SnackBar(
//                     content: Text('Decremented'),
//                     duration: Duration(milliseconds: 300),
//                   ));
//                 }
//               },
//               builder: (context, state) {
//                 return Text(
//                   state.counterValue.toString(),
//                   style: Theme.of(context).textTheme.headline4,
//                 );
//               },
//             ),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//               children: [
//                 FloatingActionButton(
//                   heroTag: '1',
//                   onPressed: () {
//                     BlocProvider.of<CounterCubit>(context).increment();
//                   },
//                   tooltip: 'Increment',
//                   child: Icon(Icons.add),
//                 ),
//                 FloatingActionButton(
//                   heroTag: '2',
//                   onPressed: () {
//                     BlocProvider.of<CounterCubit>(context).decrement();
//                     // context.read<CounterCubit>().decrement();
//                   },
//                   tooltip: 'Decrement',
//                   child: Icon(Icons.remove),
//                 ),
//               ],
//             ),
//             SizedBox(
//               height: 24,
//             ),
//             MaterialButton(
//               child: Text(
//                 'Go to second Screen',
//                 style: TextStyle(color: Colors.white),
//               ),
//               onPressed: () {
//                 Navigator.of(context).push(
//                   MaterialPageRoute(
//                     builder: (_) => BlocProvider.value(
//                       value: BlocProvider.of<CounterCubit>(
//                           context), // value of existing cubit with the containing context, not a new one!
//                       child: SecondScreen(
//                         title: 'Second Screen',
//                         color: Colors.redAccent,
//                       ),
//                     ),
//                   ),
//                 );
//               },
//               color: widget.color,
//             ),
//             SizedBox(
//               height: 24,
//             ),
//             MaterialButton(
//               child: Text(
//                 'Go to third Screen',
//                 style: TextStyle(color: Colors.white),
//               ),
//               onPressed: () {
//                 Navigator.of(context).push(
//                   MaterialPageRoute(
//                     builder: (_) => BlocProvider.value(
//                       value: BlocProvider.of<CounterCubit>(
//                           context), // value of existing cubit with the containing context, not a new one!
//                       child: SecondScreen(
//                         title: 'Third Screen',
//                         color: Colors.green,
//                       ),
//                     ),
//                   ),
//                 );
//               },
//               color: widget.color,
//             )
//           ],
//         ),
//       ),
//       // floatingActionButton: FloatingActionButton(
//       //   onPressed: _incrementCounter,
//       //   tooltip: 'Increment',
//       //   child: Icon(Icons.add),
//       // ),
//     );
//   }
// }
