import 'package:flutter/material.dart';
import 'package:tugas_pertemuan02/models/moment.dart';
import 'package:tugas_pertemuan02/widgets/post_items.dart';

class HomePage extends StatelessWidget {
  const HomePage({
    super.key,
    required this.moments,
    required this.onUpdate,
    required this.onDelete,
  });

  final Function(String id) onUpdate;
  final Function(String id) onDelete;
  final List<Moment> moments;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: moments
            .map(
              (momentItem) => PostItems(
                moment: momentItem,
                onDelete: onDelete,
                onUpdate: onUpdate,
              ),
            )
            .toList(),
      ),
    );
  }
}