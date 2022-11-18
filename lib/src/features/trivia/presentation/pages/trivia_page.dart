import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:numbers/src/features/trivia/presentation/widgets/fbutton_widget.dart';
import 'package:numbers/src/features/trivia/presentation/widgets/number_box_widget.dart';
import 'package:numbers/src/features/trivia/presentation/widgets/trivia_box_widget.dart';

import '../bloc/bloc/trivia_bloc.dart';

class NumberTriviaPage extends StatelessWidget {
  const NumberTriviaPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SizedBox(
      height: size.height,
      width: size.width,
      child: Stack(
        children: [
          Center(
            child: BlocBuilder<TriviaBloc, TriviaState>(
              builder: (context, state) {
                if (state is EmtyTriviaState) {
                  return Text(
                    "Send request",
                    style: GoogleFonts.singleDay(fontSize: 30.0),
                    textAlign: TextAlign.center,
                  );
                } else if (state is LoadingTriviaState) {
                  return const CircularProgressIndicator();
                } else if (state is LoadedTriviaState) {
                  return SingleChildScrollView(
                    child: Column(
                      children: [
                        NumberBox(number: state.trivia.number.toString()),
                        TriviaBox(trivia: state.trivia.text ?? "Ups!"),
                        const SizedBox(height: 150.0)
                      ],
                    ),
                  );
                } else if (state is ErrorTrivaState) {
                  return Text(
                    "Error${state.message}",
                    style: GoogleFonts.singleDay(fontSize: 30.0),
                    textAlign: TextAlign.center,
                  );
                } else {
                  return Container();
                }
              },
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  GetTriviaBtn(label: "Random", event: GetRandomTriviaEvent()),
                  GetTriviaBtn(label: "Math", event: GetMathTriviaEvent()),
                  GetTriviaBtn(label: "Year", event: GetYearTriviaEvent()),
                  GetTriviaBtn(label: "Date", event: GetDateTriviaEvent()),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
