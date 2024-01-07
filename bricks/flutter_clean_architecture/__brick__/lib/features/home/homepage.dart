import 'package:flutter/material.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Homepage'),
        centerTitle: true,
      ),
      body: const Center(
        child: Placeholder(
          fallbackHeight: 100,
          fallbackWidth: 100,
          strokeWidth: 1,
        ),
      ),
    );
  }
}
