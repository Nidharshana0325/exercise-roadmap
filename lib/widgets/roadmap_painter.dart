import 'package:flutter/material.dart';

class RoadmapPainter extends CustomPainter {
  final List<int> completedDays;
  final int currentDay;
  final List<double> nodePositions;

  RoadmapPainter({
    required this.completedDays,
    required this.currentDay,
    required this.nodePositions,
  });

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = 3;

    for (int i = 0; i < nodePositions.length - 1; i++) {
      final startX = nodePositions[i] + 50; // Center of the node
      final startY = 50.0 + i * 120 + 15; // Adjust vertical spacing
      final endX = nodePositions[i + 1] + 50;
      final endY = 50.0 + (i + 1) * 120 + 15;

      final path = Path()
        ..moveTo(startX, startY)
        ..quadraticBezierTo(
          (startX + endX) / 2,
          (startY + endY) / 2 - 50, // Curve control point
          endX,
          endY,
        );

      paint.color = completedDays.contains(i + 1)
          ? Colors.green
          : i + 1 < currentDay
              ? Colors.deepPurple
              : Colors.grey[800]!;
      canvas.drawPath(path, paint);
    }
  }

  @override
  bool shouldRepaint(covariant RoadmapPainter oldDelegate) {
    return oldDelegate.completedDays != completedDays ||
        oldDelegate.currentDay != currentDay ||
        oldDelegate.nodePositions != nodePositions;
  }
}
