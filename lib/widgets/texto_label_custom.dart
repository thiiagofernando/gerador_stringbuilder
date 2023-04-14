import 'package:flutter/material.dart';

class TextoLabelCustom extends StatelessWidget {
  const TextoLabelCustom({
    super.key,
    required this.label,
  });
  final String label;
  @override
  Widget build(BuildContext context) {
    return Text(
      label,
      style: const TextStyle(
        fontSize: 16,
        color: Colors.orange,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
