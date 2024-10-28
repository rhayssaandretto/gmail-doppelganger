import 'package:flutter/material.dart';

import '../../../core/widgets/list.dart';

class EmailListPage extends StatelessWidget {
  const EmailListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Doppelmail'),
        backgroundColor: Colors.pink[300],
      ),
      body: const ListGeneric(), 
    );
  }

  // @override
  // State<StatefulWidget> createState() {
  //   // TODO: implement createState
  //   throw UnimplementedError();
  // }
}
