import 'package:counter_bloc/views/counterScreen/cubits/counter_cubit.dart';
import 'package:counter_bloc/views/counterScreen/states/counter_states.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterRow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          FloatingActionButton(
            onPressed: () {
              CounterCubit.of(context).plus();
            },
            child: Icon(Icons.add),
          ),
          BlocBuilder<CounterCubit, CounterStates>(
              builder: (context, state) =>
                  Text(CounterCubit.of(context).counter.toString())),
          FloatingActionButton(
            onPressed: () {
              CounterCubit.of(context).minus();
            },
            child: Icon(Icons.minimize),
          )
        ],
        //   ),
        // ),
      ),
    );
  }
}
