import 'package:flutter/material.dart';

class DefaultScaffold extends StatelessWidget {
  const DefaultScaffold({Key? key, required this.body}) : super(key: key);

  final Widget body;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Flutter AppBar Color"),
      ),
      backgroundColor: Theme.of(context).primaryColor,
      body: SafeArea(
        child: body,
      ),
    );
  }
}
