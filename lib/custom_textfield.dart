import 'package:flutter/material.dart';
import 'theme.dart';

class CustomTextField extends StatelessWidget {
  final String label;
  final TextEditingController? controller;
  final TextInputType keyboardType;
  final FormFieldValidator<String>? validator;
  final FormFieldSetter<String>? onSaved;

  const CustomTextField({
    required this.label,
    this.controller,
    this.keyboardType = TextInputType.text,
    this.validator,
    this.onSaved,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: TextStyle(color: foreground, fontSize: textSizeMedium),
        ),
        TextFormField(
          controller: controller,
          keyboardType: keyboardType,
          validator: validator,
          onSaved: onSaved,
          autocorrect: false,
          enableSuggestions: false,
          decoration: const InputDecoration(labelText: null, hintText: null),
        ),
        SizedBox(height: paddingBig),
      ],
    );
  }
}
