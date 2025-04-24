import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class QrcodePage extends StatelessWidget {
  const QrcodePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      appBar: AppBar(title: const Text("Scan QR code"),),
      body: Column(
        children: [
          Container(color: Colors.red,)
        ],
      ),
    ));
  }
}
