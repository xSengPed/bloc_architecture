import 'package:flutter/material.dart';
import 'package:flutter_bloc_application/models/todo.dart';

class ItemTicket extends StatelessWidget {
  final Todo item;
  const ItemTicket({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(item.title),
            Text("Create At : ${item.createdAt}"),
          ],
        ),
      ),
    );
  }
}
