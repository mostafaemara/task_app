import 'package:flutter/material.dart';

class MobileFormField extends StatelessWidget {
  const MobileFormField({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
            width: 80,
            child: TextFormField(
              decoration: const InputDecoration(hintText: "+20"),
            )),
        const SizedBox(
          width: 12,
        ),
        Expanded(
            child: TextFormField(
          decoration: const InputDecoration(hintText: "Mobile Number"),
        )),
      ],
    );
  }
}
