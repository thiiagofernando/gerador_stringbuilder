import 'package:flutter/material.dart';
import '../widgets/elevated_button_executar_custom.dart';
import '../widgets/texto_area_custom.dart';
import '../widgets/texto_label_custom.dart';

class MyHomeOutrasPlataformasPage extends StatefulWidget {
  const MyHomeOutrasPlataformasPage({super.key, required this.title});

  final String title;

  @override
  State<MyHomeOutrasPlataformasPage> createState() => _MyHomeOutrasPlataformasPage();
}

class _MyHomeOutrasPlataformasPage extends State<MyHomeOutrasPlataformasPage> {
  final sqlCtrl = TextEditingController();
  final resultadoCtrl = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          widget.title,
          style: const TextStyle(color: Colors.white),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(children: [
                  const TextoLabelCustom(label: 'Informe o SQL'),
                  const SizedBox(width: 15),
                  ElevatedButtonExecutarCustom(
                      sql: sqlCtrl.text, labelBottao: 'Executar', resultadoCtrl: resultadoCtrl),
                ]),
                const SizedBox(height: 10),
                TextoAreaCustom(resultadoCtrl: sqlCtrl, somenteLeitura: false),
                const SizedBox(height: 10),
                const TextoLabelCustom(label: 'Resultado'),
                TextoAreaCustom(resultadoCtrl: resultadoCtrl, somenteLeitura: true),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
