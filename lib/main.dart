import 'package:flutter/material.dart';
import 'package:window_manager/window_manager.dart';
import 'dart:io' show Platform;
import 'package:flutter/foundation.dart' show kIsWeb;
import 'page/home_page_outras_plataformas.dart';
import 'page/home_page_windows.dart';

void main() async {
  const tituloApp = 'String Builder SQL C#';
  if (!kIsWeb && Platform.isWindows) {
    WidgetsFlutterBinding.ensureInitialized();
    await windowManager.ensureInitialized();
    windowManager.waitUntilReadyToShow().then((_) async {
      await windowManager.setTitleBarStyle(TitleBarStyle.normal, windowButtonVisibility: false);
      await windowManager.setSize(const Size(800, 900));
      await windowManager.center();
      await windowManager.show();
      await windowManager.setTitle(tituloApp);
      await windowManager.setSkipTaskbar(false);
    });
  }
  runApp(const MyApp(
    tituloAplicacao: tituloApp,
  ));
}

class MyApp extends StatelessWidget {
  final String tituloAplicacao;
  const MyApp({super.key, required this.tituloAplicacao});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: tituloAplicacao,
      theme: ThemeData(
        primarySwatch: Colors.orange,
      ),
      home: (!kIsWeb && Platform.isWindows)
          ? MyHomeWindowsPage(title: tituloAplicacao)
          : MyHomeOutrasPlataformasPage(title: tituloAplicacao),
    );
  }
}
