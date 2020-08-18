import 'package:ddd_notes/application/notes/form/note_form_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class NoteFormPageScaffold extends StatelessWidget {
  const NoteFormPageScaffold({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: BlocBuilder<NoteFormBloc, NoteFormState>(
          buildWhen: (previousState, currentState) =>
              previousState.isEditing != currentState.isEditing,
          builder: (context, state) {
            return Text(state.isEditing ? 'Edit Note' : 'Create Note');
          },
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.check),
            onPressed: () {
              context.bloc<NoteFormBloc>().add(const NoteFormEvent.saved());
            },
          )
        ],
      ),
    );
  }
}
