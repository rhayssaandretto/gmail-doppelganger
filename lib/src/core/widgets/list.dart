import 'package:flutter/material.dart';

class ListGeneric extends StatelessWidget {
  const ListGeneric({super.key});

//TODO: refatorar 

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        ListTile(
          leading: Icon(Icons.email),
          title: Text('Email 1'),
          subtitle: Text('This is the first email'),
        ),
        ListTile(
          leading: Icon(Icons.email),
          title: Text('Email 2'),
          subtitle: Text('This is the second email'),
        ),
        ListTile(
          leading: Icon(Icons.email),
          title: Text('Email 3'),
          subtitle: Text('This is the third email'),
        ),
      ],
    );
  }
}
