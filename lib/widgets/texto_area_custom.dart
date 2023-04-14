import 'package:flutter/material.dart';

class TextoAreaCustom extends StatelessWidget {
  const TextoAreaCustom({
    super.key,
    required this.resultadoCtrl,
    required this.somenteLeitura,
  });

  final TextEditingController resultadoCtrl;
  final bool somenteLeitura;

  @override
  Widget build(BuildContext context) {
    return TextField(
      keyboardType: TextInputType.multiline,
      controller: resultadoCtrl,
      maxLines: 15,
      readOnly: somenteLeitura,
      decoration: const InputDecoration(
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.orange, width: 2.0),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
            width: 3,
            color: Colors.orange,
          ),
        ),
      ),
    );
  }
}
