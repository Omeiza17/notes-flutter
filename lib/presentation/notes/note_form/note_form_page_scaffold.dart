import 'package:ddd_notes/application/notes/form/note_form_bloc.dart';
import 'package:ddd_notes/presentation/notes/note_form/widgets/body_field_widgets.dart';
import 'package:ddd_notes/presentation/notes/note_form/widgets/color_field_widget.dart';
import 'package:ddd_notes/presentation/notes/note_form/widgets/todo_tile_widget.dart';
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
      body: BlocBuilder<NoteFormBloc, NoteFormState>(
        buildWhen: (previousState, currentState) =>
            previousState.showErrorMessages != currentState.showErrorMessages,
        builder: (BuildContext context, state) {
          return Form(
            autovalidate: state.showErrorMessages,
            child: SingleChildScrollView(
              child: Column(
                // ignore: prefer_const_literals_to_create_immutables
                children: <Widget>[
                  const BodyField(),
                  const ColorField(),
                  const TodoTile(),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
