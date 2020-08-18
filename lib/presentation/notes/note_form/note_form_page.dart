import 'package:auto_route/auto_route.dart';
import 'package:dartz/dartz.dart';
import 'package:ddd_notes/application/notes/form/note_form_bloc.dart';
import 'package:ddd_notes/domain/notes/note.dart';
import 'package:ddd_notes/domain/notes/note_failure.dart';
import 'package:ddd_notes/injection.dart';
import 'package:ddd_notes/presentation/notes/note_form/note_form_page_scaffold.dart';
import 'package:ddd_notes/presentation/notes/note_form/saving_in_progress_overlay.dart';
import 'package:ddd_notes/presentation/routes/router.gr.dart';
import 'package:flushbar/flushbar_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class NoteFormPage extends StatelessWidget {
  final Note editedNote;

  const NoteFormPage({Key key, @required this.editedNote}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => getIt<NoteFormBloc>()
        ..add(NoteFormEvent.initialized(optionOf(editedNote))),
      child: BlocConsumer<NoteFormBloc, NoteFormState>(
        listenWhen: (previousState, currentState) =>
            previousState.saveFailureOrSuccessOption !=
            currentState.saveFailureOrSuccessOption,
        listener: (BuildContext context, state) {
          state.saveFailureOrSuccessOption.fold(
            () {},
            (Either<NoteFailure, Unit> either) => {
              either.fold(
                (NoteFailure failure) => FlushbarHelper.createError(
                  message: failure.map(
                    insufficientPermissions: (_) =>
                        'Insufficient permissions ❌',
                    unableToUpdate: (_) =>
                        "Couldn't update the note. Was it deleted from another device?",
                    unexpected: (_) =>
                        'Unexpected error occurred, please contact support.',
                  ),
                ).show(context),
                (_) {
                  ExtendedNavigator.of(context).popUntil((route) =>
                      route.settings.name == Routes.noteOverviewPage);
                },
              )
            },
          );
        },
        buildWhen: (previousState, currentState) =>
            previousState.isSaving != currentState.isSaving,
        builder: (context, state) {
          return Stack(
            children: <Widget>[
              const NoteFormPageScaffold(),
              SavingInProgressOverlay(
                isSaving: state.isSaving,
              ),
            ],
          );
        },
      ),
    );
  }
}
