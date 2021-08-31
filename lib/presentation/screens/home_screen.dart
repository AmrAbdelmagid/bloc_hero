import 'package:bloc_hero/business_logic/cubits/counter_cubit/counter_cubit.dart';
import 'package:bloc_hero/business_logic/cubits/internet_cubit/cubit/internet_cubit.dart';
import 'package:bloc_hero/constants/enums.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({
    Key? key,
    required this.title,
    required this.color,
  }) : super(key: key);

  final String title;
  final Color color;

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: BlocListener<InternetCubit, InternetState>(
        listener: (context, state) {
          if (state is InternetConnected &&
              state.connectionType == ConnectionType.Wifi) {
            BlocProvider.of<CounterCubit>(context).increment();
          } else if (state is InternetConnected &&
              state.connectionType == ConnectionType.Mobile) {
            BlocProvider.of<CounterCubit>(context).decrement();
          }
        },
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              BlocBuilder<InternetCubit, InternetState>(
                builder: (context, state) {
                  if (state is InternetConnected &&
                      state.connectionType == ConnectionType.Wifi) {
                    return Text('Wifi', style: TextStyle(fontSize: 72.0));
                  } else if (state is InternetConnected &&
                      state.connectionType == ConnectionType.Mobile) {
                    return Text('Mobile', style: TextStyle(fontSize: 72.0));
                  } else if (state is InternetDisconnected) {
                    return Text('Disconnected',
                        style: TextStyle(fontSize: 72.0));
                  } else {
                    return CircularProgressIndicator();
                  }
                },
              ),
              BlocConsumer<CounterCubit, CounterState>(
                listener: (context, state) {
                  if (state.wasIncremented == true) {
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                      content: Text('Incremented'),
                      duration: Duration(milliseconds: 300),
                    ));
                  } else if (state.wasIncremented == false) {
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                      content: Text('Decremented'),
                      duration: Duration(milliseconds: 300),
                    ));
                  }
                },
                builder: (context, state) {
                  return Text(
                    state.counterValue.toString(),
                    style: Theme.of(context).textTheme.headline4,
                  );
                },
              ),
              // Row(
              //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              //   children: [
              //     FloatingActionButton(
              //       heroTag: '1',
              //       onPressed: () {
              //         BlocProvider.of<CounterCubit>(context).increment();
              //       },
              //       tooltip: 'Increment',
              //       child: Icon(Icons.add),
              //     ),
              //     FloatingActionButton(
              //       heroTag: '2',
              //       onPressed: () {
              //         BlocProvider.of<CounterCubit>(context).decrement();
              //         // context.read<CounterCubit>().decrement();
              //       },
              //       tooltip: 'Decrement',
              //       child: Icon(Icons.remove),
              //     ),
              //   ],
              // ),
              SizedBox(
                height: 24,
              ),
              MaterialButton(
                child: Text(
                  'Go to second Screen',
                  style: TextStyle(color: Colors.white),
                ),
                onPressed: () {
                  Navigator.of(context).pushNamed('/second');
                },
                color: widget.color,
              ),
              SizedBox(
                height: 24,
              ),
              MaterialButton(
                child: Text(
                  'Go to third Screen',
                  style: TextStyle(color: Colors.white),
                ),
                onPressed: () {
                  Navigator.of(context).pushNamed('/third');
                },
                color: widget.color,
              )
            ],
          ),
        ),
      ),
      // floatingActionButton: FloatingActionButton(
      //   onPressed: _incrementCounter,
      //   tooltip: 'Increment',
      //   child: Icon(Icons.add),
      // ),
    );
  }
}
