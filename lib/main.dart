import 'package:bloc_hero/business_logic/cubits/counter_cubit/counter_cubit.dart';
import 'package:bloc_hero/business_logic/cubits/internet_cubit/cubit/internet_cubit.dart';
import 'package:bloc_hero/presentation/app_router.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(MyApp(
    appRouter: AppRouter(),
    connectivity: Connectivity(),
  ));
}

class MyApp extends StatelessWidget {
  final AppRouter appRouter;
  final Connectivity connectivity;
  MyApp({required this.appRouter, required this.connectivity});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => InternetCubit(connectivity: connectivity),
        ),
        BlocProvider(
          create: (context) => CounterCubit(
              internetCubit: BlocProvider.of<InternetCubit>(context)),
        ),
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.lightBlue,
        ),
        onGenerateRoute: appRouter.onGenerateRoute,
      ),
    );
  }
}
