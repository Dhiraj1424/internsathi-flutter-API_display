import 'package:flutter/material.dart';

class CustumCard extends StatelessWidget {
  const CustumCard({
    Key? key,
    required this.id,
    required this.name,
  }) : super(key: key);
  final String name;
  final int id;

  @override
  Widget build(BuildContext context) {
 
    return Stack(
      children: [
        Card(
          
          elevation: 1,
          child: ListTile(
            leading: CircleAvatar(
              child: Text(id.toString()),
            ),
            title: Text(name.toString()),
          ),
        ),
      ],
    );
  }
}