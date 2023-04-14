import 'package:flutter/material.dart';

import '../utils/criar_appendline.dart';

class ElevatedButtonExecutarCustom extends StatelessWidget {
  final String sql;
  final String labelBottao;
  final TextEditingController resultadoCtrl;
  const ElevatedButtonExecutarCustom({
    super.key,
    required this.sql,
    required this.labelBottao,
    required this.resultadoCtrl,
  });
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        resultadoCtrl.text = criarAppenLine(sql);
      },
      child: Text(
        labelBottao,
        style: const TextStyle(color: Colors.white),
      ),
    );
  }
}
