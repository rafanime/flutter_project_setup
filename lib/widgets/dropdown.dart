import 'package:flutter/material.dart';
import 'package:projectname/theme/_index.dart';

class DropDown extends StatelessWidget {
  final List<String> options;
  final String errorText;
  final Function onChanged;
  final String value;
  const DropDown({
    Key key,
    this.errorText,
    this.value,
    @required this.options,
    this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField(
      value: value ?? options.first,
      onChanged: onChanged,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.black,
            width: AppSizes.b,
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.black,
            width: AppSizes.b,
          ),
        ),
        errorText: errorText,
        errorStyle: AppTextStyles.inputError.copyWith(color: Colors.red),
      ),
      items: options
          .map(
            (option) => DropdownMenuItem(
              value: option,
              child: Text(option, style: AppTextStyles.inputText),
            ),
          )
          .toList(),
    );
  }
}
