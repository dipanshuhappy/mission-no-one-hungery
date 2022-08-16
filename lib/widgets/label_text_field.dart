import 'package:flutter/material.dart';
class LabelTextField extends StatelessWidget {
  const LabelTextField(
      {Key? key,
        required this.label,
        this.validator,
      this.errorText,
      this.onChanged}) : super(key: key);
  final String label;
  final String? Function(String?)? validator;
  final String? errorText;
  final void Function(String)? onChanged;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
        decoration:InputDecoration(
            labelText:label,
          errorText: errorText
        ),
        validator: validator,
      onChanged: onChanged,
    );
  }
}
