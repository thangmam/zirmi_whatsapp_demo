import 'package:flutter/material.dart';

class TabCallsScreen extends StatefulWidget {
  const TabCallsScreen({super.key});

  @override
  State<TabCallsScreen> createState() => _TabCallsScreenState();
}

class _TabCallsScreenState extends State<TabCallsScreen> {
  @override
  Widget build(BuildContext context) {
    return Column(children: [Text("Calls")]);
  }
}
