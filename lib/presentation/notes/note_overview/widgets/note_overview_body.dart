import 'package:ddd_notes/application/notes/watcher/note_watcher_bloc.dart';
import 'package:ddd_notes/domain/notes/note.dart';
import 'package:ddd_notes/presentation/notes/note_overview/widgets/critical_failure_display.dart';
import 'package:ddd_notes/presentation/notes/note_overview/widgets/error_note_card.dart';
import 'package:ddd_notes/presentation/notes/note_overview/widgets/note_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class NoteOverviewBody extends StatelessWidget {
  const NoteOverviewBody({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NoteWatcherBloc, NoteWatcherState>(
      builder: (BuildContext context, state) {
        return state.map(
          initial: (_) => Container(),
          loadInProgress: (_) =>
              const Center(child: CircularProgressIndicator()),
          loadSuccess: (state) {
            return ListView.builder(
              itemBuilder: (context, index) {
                final Note note = state.notes[index];
                if (note.failureOption.isSome()) {
                  return ErrorNoteCard(note: note);
                } else {
                  return NoteCard(note: note);
                }
              },
              itemCount: state.notes.size,
            );
          },
          loadFailure: (state) {
            return CriticalFailureDisplay(failure: state.noteFailure);
          },
        );
      },
    );
  }
}
