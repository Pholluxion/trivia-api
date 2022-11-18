import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:numbers/src/features/trivia/presentation/bloc/bloc/trivia_bloc.dart';

class GetTriviaBtn extends StatelessWidget {
  const GetTriviaBtn({
    Key? key,
    required this.label,
    required this.event,
  }) : super(key: key);

  final String label;
  final TriviaEvent event;

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      key: Key(label),
      elevation: 10.0,
      backgroundColor: Colors.blueAccent,
      onPressed: () => context.read<TriviaBloc>().add(event),
      child: FittedBox(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            label,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              shadows: [
                BoxShadow(
                  color: Colors.black,
                  blurRadius: 10.0,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
