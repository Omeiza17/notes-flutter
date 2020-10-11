import 'package:ddd_notes/application/notes/form/note_form_bloc.dart';
import 'package:ddd_notes/domain/notes/value_objects.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ColorField extends StatelessWidget {
  const ColorField({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NoteFormBloc, NoteFormState>(
      buildWhen: (previous, current) =>
          previous.note.color != current.note.color,
      builder: (BuildContext context, state) {
        return Container(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          height: 80,
          child: ListView.separated(
              physics: const BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                final itemColor = NoteColor.predefinedColors[index];
                return GestureDetector(
                  onTap: () => context
                      .bloc<NoteFormBloc>()
                      .add(NoteFormEvent.colorChanged(itemColor)),
                  child: Material(
                    color: itemColor,
                    elevation: 4,
                    shape: CircleBorder(
                      side: state.note.color.value.fold(
                        (_) => BorderSide.none,
                        (color) => color == itemColor
                            ? const BorderSide(width: 1.5)
                            : BorderSide.none,
                      ),
                    ),
                    child: const SizedBox(
                      width: 50,
                      height: 50,
                    ),
                  ),
                );
              },
              separatorBuilder: (context, index) => const SizedBox(width: 16),
              itemCount: NoteColor.predefinedColors.length),
        );
      },
    );
  }
}
