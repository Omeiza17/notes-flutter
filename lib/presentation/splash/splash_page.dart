import 'package:auto_route/auto_route.dart';
import 'package:ddd_notes/application/auth/auth_bloc.dart';
import 'package:ddd_notes/presentation/routes/router.gr.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SplashPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthBloc, AuthState>(
      listener: (context, state) {
        state.map(
          initial: (_) async* {},
          authenticated: (_) =>
              ExtendedNavigator.of(context).pushNoteOverviewPage(),
          unauthenticated: (_) =>
              ExtendedNavigator.of(context).pushSignInPage(),
        );
      },
      child: const Scaffold(
        body: Center(
          child: CircularProgressIndicator(),
        ),
      ),
    );
  }
}
