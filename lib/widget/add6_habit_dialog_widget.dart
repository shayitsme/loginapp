import 'package:flutter/material.dart';

import 'habit6_form_widget.dart';

class Add6HabitDialogWidget extends StatefulWidget {
  const Add6HabitDialogWidget({Key? key}) : super(key: key);

  @override
  State<Add6HabitDialogWidget> createState() => _Add6HabitDialogWidgetState();
}

class _Add6HabitDialogWidgetState extends State<Add6HabitDialogWidget> {
  final _formkey = GlobalKey<FormState>();
  String title = '';
  String description = '';

  @override
  Widget build(BuildContext context)  => AlertDialog(
    content: Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Add Habit',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 22,
          ),
        ),
        SizedBox(height: 8),
        Habit6FormWidget(
          onChangedTitle: (title) => setState(() => this.title = title),
          onChangedDescription: (description) => setState(() => this.description = description),
          onSavedHabit: () {}, description: '', title: '',
        ),

      ],
    ),
  );

}


