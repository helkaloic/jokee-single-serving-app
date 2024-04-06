import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jokee_single_serving/injection_container.dart';
import 'package:jokee_single_serving/presentation/cubit/joke_cubit.dart';

class BlocProviderScope extends StatelessWidget {
  const BlocProviderScope({super.key, required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (_) => sl<JokeCubit>()..getAllJokes(),
          lazy: false,
        ),
      ],
      child: child,
    );
  }
}
