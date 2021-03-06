import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:template/providers/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider<DontForgetToRenameItProvider>(create: (_) => DontForgetToRenameItProvider()),
      ],
      child: Container(),
    );
  }
}
