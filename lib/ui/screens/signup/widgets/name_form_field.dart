import 'package:flutter/material.dart';

class NameFormField extends StatelessWidget {
  const NameFormField({
    Key? key,
    required this.controller,
  }) : super(key: key);
  final TextEditingController controller;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      decoration: const InputDecoration(hintText: "Name"),
    );
  }
}
