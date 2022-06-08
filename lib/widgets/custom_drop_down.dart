import 'package:drop_down_example_flutter/data/post_model.dart';
import 'package:flutter/material.dart';

class CustomDropDown<T extends MyModel> extends StatelessWidget {
  const CustomDropDown({
    Key? key,
    required this.items,
    required this.onChanged,
    this.value,
  }) : super(key: key);

  final List<T> items;

  final Function(T?) onChanged;
  final T? value;

  @override
  Widget build(BuildContext context) {
    return DropdownButton<T>(
      hint: const Text('Post'),
      value: value,
      items: items.map((model) {
        return DropdownMenuItem<T>(
          value: model,
          child: Text(model.name!),
        );
      }).toList(),
      onChanged: onChanged,
    );
  }
}
