import 'package:flutter/material.dart';

class Habit6FormWidget extends StatelessWidget {
  final String title;
  final String description;
  final ValueChanged<String> onChangedTitle;
  final ValueChanged<String> onChangedDescription;
  final VoidCallback onSavedHabit;

  const Habit6FormWidget({Key? key,
    required this.title,
    required this.description,
    required this.onChangedTitle,
    required this.onChangedDescription,
    required this.onSavedHabit
  }) : super(key: key);


  @override
  Widget build(BuildContext context) =>
      SingleChildScrollView(
        child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              buildTitle(),
            ]
        ),
      );

  Widget buildTitle() =>
      TextFormField(
        decoration: InputDecoration(
          border: UnderlineInputBorder(),
          labelText: 'Title',
        ),
      );
}
