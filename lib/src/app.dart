import 'package:flutter/material.dart';

/// The Widget that configures your application.
class Doppelmail extends StatelessWidget {
  const Doppelmail({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Doppelmail',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Doppelmail'),
          backgroundColor: Colors.pink[300],
        ),
        body: const Center(
          child: Text('Doppelmail'),
        ),
      ),
    );
  }
}
