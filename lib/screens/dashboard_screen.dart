import 'package:flutter/material.dart';

class DashboardScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFB98959),
      body: Stack(
        children: <Widget> [
          FractionallySizedBox(
            heightFactor: 0.40,
          ),
          FractionallySizedBox(
            heightFactor: 0.65,
          ),
        ],
      ),
    );
  }
}