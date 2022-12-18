import 'package:flutter/material.dart';

class CustumRow extends StatelessWidget {
  final String text1, text2;
  const CustumRow({
    Key? key,
    required this.text1,
    required this.text2,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(text1),
        Text(text2),
      ],
    );
  }
}