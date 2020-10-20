import 'package:ddd_notes/application/notes/form/note_form_bloc.dart';
import 'package:ddd_notes/presentation/notes/note_form/misc/todo_item_presentation_classes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kt_dart/collection.dart';

class TodoTile extends StatelessWidget {
  const TodoTile({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NoteFormBloc, NoteFormState>(
      builder: (context, state) {
        return ListTile(
          title: const Text('Add a todo'),
          leading: const Padding(
            padding: EdgeInsets.all(8.0),
            child: Icon(Icons.add),
          ),
          onTap: () => context.bloc<NoteFormBloc>().add(
              NoteFormEvent.todosChanged(listOf(TodoItemPrimitive.empty()))),
        );
      },
    );
  }
}
