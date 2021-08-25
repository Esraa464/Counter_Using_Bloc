import 'package:counter_bloc/views/counterScreen/components/app_bar.dart';
import 'package:counter_bloc/views/counterScreen/components/counter.dart';
import 'package:counter_bloc/views/counterScreen/cubits/counter_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => CounterCubit(),
      child: Scaffold(
        appBar: appBar(),
        body:CounterRow(),
      ),
    );
  }
}
