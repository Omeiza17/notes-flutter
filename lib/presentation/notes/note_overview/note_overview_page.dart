import 'package:auto_route/auto_route.dart';
import 'package:ddd_notes/application/auth/auth_bloc.dart';
import 'package:ddd_notes/application/notes/actor/note_actor_bloc.dart';
import 'package:ddd_notes/application/notes/watcher/note_watcher_bloc.dart';
import 'package:ddd_notes/injection.dart';
import 'package:ddd_notes/presentation/notes/note_overview/widgets/note_overview_body.dart';
import 'package:ddd_notes/presentation/notes/note_overview/widgets/uncompleted_switch.dart';
import 'package:ddd_notes/presentation/routes/router.gr.dart';
import 'package:flushbar/flushbar_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class NoteOverviewPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<NoteWatcherBloc>(
          create: (context) => getIt<NoteWatcherBloc>()
            ..add(const NoteWatcherEvent.watchAllStarted()),
        ),
        BlocProvider<NoteActorBloc>(
          create: (context) => getIt<NoteActorBloc>(),
        ),
      ],
      child: MultiBlocListener(
        listeners: [
          BlocListener<AuthBloc, AuthState>(
            listener: (context, state) {
              state.maybeMap(
                unauthenticated: (_) =>
                    ExtendedNavigator.of(context).pushSignInPage(),
                orElse: () {},
              );
            },
          ),
          BlocListener<NoteActorBloc, NoteActorState>(
            listener: (context, state) {
              state.maybeMap(
                deleteFailure: (state) {
                  FlushbarHelper.createError(
                    message: state.noteFailure.map(
                      unexpected: (_) =>
                          'Unexpected error occurred while deleting. Please contact support',
                      insufficientPermissions: (_) =>
                          'Insufficient permissions',
                      unableToUpdate: (_) => 'Impossible error',
                    ),
                    duration: const Duration(seconds: 5),
                  ).show(context);
                },
                orElse: () {},
              );
            },
          ),
        ],
        child: Scaffold(
          appBar: AppBar(
            title: const Text('Notes'),
            centerTitle: true,
            elevation: 0,
            leading: IconButton(
              icon: const Icon(Icons.exit_to_app),
              onPressed: () {
                context.bloc<AuthBloc>().add(const AuthEvent.signedOut());
              },
            ),
            actions: const <Widget>[
              UncompletedSwitch(),
            ],
          ),
          body: const NoteOverviewBody(),
          floatingActionButton: FloatingActionButton(
            onPressed: () {
              // TODO: navigate to note form page
            },
            child: const Icon(Icons.add),
          ),
        ),
      ),
    );
  }
}
