import 'package:flutter/material.dart';
import '../theme/colors.dart';

class ToDoTile extends StatelessWidget {
  final String taskName;
  final bool isCompleted;
  Function(bool?)? onChanged;

  ToDoTile({
    super.key,
    required this.taskName,
    required this.isCompleted,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(25),
      child: Container(
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: primaryColor,
          borderRadius: BorderRadius.circular(12),
          boxShadow: [
            BoxShadow(
              color: secondaryColor.withOpacity(0.1),
              spreadRadius: 5,
              blurRadius: 7,
              offset: const Offset(0, 6),
            ),
          ],
        ),
        child: Row(
          children: [
            // checkbox
            Checkbox(
              value: isCompleted,
              onChanged: onChanged,
            ),
            // task name
            Text(taskName),
          ],
        ),
      ),
    );
  }
}
