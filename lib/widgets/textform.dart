import 'package:flutter/material.dart';
import 'package:projectname/theme/_index.dart';

class TextForm extends StatelessWidget {
  final Key fieldKey;
  final String errorText;
  final String hintText;
  final Widget suffixIcon;
  final String initialValue;
  final FocusNode focusNode;
  final TextInputType keyboardType;
  final TextInputAction textInputAction;
  final FormFieldSetter<String> onSaved;
  final FormFieldValidator<String> validator;
  final ValueChanged<String> onFieldSubmitted;
  final Function onChanged;
  final bool autofocus;
  final bool obscureText;
  final TextCapitalization capitalization;
  final String _counterText;
  final TextEditingController controller;
  final BorderRadius borderRadius;
  final int minLines;
  final int maxLines;

  TextForm({
    Key key,
    String counterText,
    this.fieldKey,
    this.errorText,
    this.suffixIcon,
    this.initialValue,
    this.validator,
    this.onSaved,
    this.onFieldSubmitted,
    this.keyboardType,
    this.textInputAction,
    this.focusNode,
    this.onChanged,
    this.controller,
    this.hintText,
    this.borderRadius,
    this.obscureText = false,
    this.autofocus = false,
    this.minLines = 0,
    this.maxLines = 0,
    this.capitalization = TextCapitalization.none,
  })  : _counterText = counterText ?? ' ',
        assert(obscureText != null),
        assert(autofocus != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      key: fieldKey,
      controller: controller,
      onSaved: onSaved,
      onFieldSubmitted: onFieldSubmitted,
      validator: validator,
      initialValue: initialValue,
      focusNode: focusNode,
      keyboardType: keyboardType,
      textInputAction: textInputAction,
      autofocus: autofocus,
      obscureText: obscureText,
      keyboardAppearance: Theme.of(context).brightness,
      style: AppTextStyles.inputText,
      textCapitalization: capitalization,
      decoration: InputDecoration(
        errorText: errorText,
        counterText: _counterText,
        prefix: Container(width: AppSizes.u2),
        suffixIcon: suffixIcon,
        hintText: hintText,
        hintStyle: AppTextStyles.inputText.copyWith(color: Colors.black26),
        border: OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.black,
            width: AppSizes.b,
          ),
          borderRadius: borderRadius ?? BorderRadius.zero,
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.black,
            width: AppSizes.bh,
          ),
          borderRadius: borderRadius ?? BorderRadius.zero,
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.black,
            width: AppSizes.b,
          ),
          borderRadius: borderRadius ?? BorderRadius.zero,
        ),
        errorStyle: AppTextStyles.inputError.copyWith(color: Colors.red),
      ),
      onChanged: onChanged,
    );
  }
}
