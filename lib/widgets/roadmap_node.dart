import 'package:flutter/material.dart';

class RoadmapNode extends StatelessWidget {
  final String title;
  final bool isCompleted;
  final bool isUnlocked;
  final VoidCallback onTap;

  const RoadmapNode({
    Key? key,
    required this.title,
    required this.isCompleted,
    required this.isUnlocked,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: isUnlocked ? onTap : null,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        decoration: BoxDecoration(
          color: isCompleted
              ? Colors.green
              : isUnlocked
                  ? Colors.deepPurple
                  : Colors.grey[800]!,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Row(
          children: [
            Icon(
              Icons.circle,
              color: isCompleted ? Colors.green : Colors.grey,
              size: 12,
            ),
            const SizedBox(width: 8),
            Text(
              title,
              style: TextStyle(
                color: isUnlocked ? Colors.white : Colors.grey,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
