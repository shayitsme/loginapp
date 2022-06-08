import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../models/habit3.dart';
import '../widget/habit2_form_widget.dart';

class EditHabit3Page extends StatefulWidget {
  final Habit3 habit3;

  const EditHabit3Page({Key? key, required this.habit3}) : super(key: key);

  @override
  _EditHabit3PageState createState() => _EditHabit3PageState();
}

class _EditHabit3PageState extends State<EditHabit3Page> {
  final _formKey = GlobalKey<FormState>();

  late String title;
  late String description;

  @override
  void initState() {
    super.initState();

    title = widget.habit3.title;
    description = widget.habit3.description;
  }

  @override
  Widget build(BuildContext context) =>
      Scaffold(
          appBar: AppBar(
            title: Text('Edit Habit'),
            backgroundColor: Colors.brown[400],
          ),
          body: Padding(
            padding: EdgeInsets.all(16),
            child: Habit2FormWidget(
              title: title,
              description: description,
              onChangedTitle: (title) => setState(() => this.title = title),
              onChangedDescription: (description) =>
                  setState(() => this.description = description),
              onSavedHabit: () {},
            ),
          ));
}
