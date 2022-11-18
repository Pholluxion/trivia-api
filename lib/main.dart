import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:numbers/src/features/trivia/presentation/bloc/bloc/trivia_bloc.dart';
import 'package:numbers/src/features/trivia/presentation/pages/trivia_page.dart';

import 'package:numbers/src/injection.dart' as di;

void main() {
  di.init();
  runApp(const HomeView());
}

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: BlocProvider(
          create: (_) => di.locator<TriviaBloc>(),
          child: const NumberTriviaPage(),
        ),
      ),
      theme: ThemeData(
        textTheme: GoogleFonts.redHatMonoTextTheme(),
      ),
    );
  }
}
