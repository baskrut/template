import 'package:flutter/material.dart';

class MainLayout extends StatelessWidget {
  final PreferredSizeWidget? appBar;
  final Widget child;

  const MainLayout({required this.child, this.appBar, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar,
      body: child,
    );
  }
}
