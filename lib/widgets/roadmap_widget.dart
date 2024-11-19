import 'package:exercise_map/widgets/roadmap_node.dart';
import 'package:exercise_map/widgets/roadmap_painter.dart';
import 'package:flutter/material.dart';
import 'dart:math';
import 'package:provider/provider.dart';
import '../providers/exercise_provider.dart';

class RoadmapWidget extends StatelessWidget {
  final Function(int) onNodeTap;

  const RoadmapWidget({Key? key, required this.onNodeTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final exerciseProvider = context.watch<ExerciseProvider>();
    final nodePositions = _generateRandomNodePositions(6, MediaQuery.of(context).size.width);

    return SingleChildScrollView(
      child: CustomPaint(
        painter: RoadmapPainter(
          completedDays: exerciseProvider.completedDays,
          currentDay: exerciseProvider.currentDay,
          nodePositions: nodePositions,
        ),
        child: SizedBox(
          height: 800, // Adjust this to fit all nodes
          width: MediaQuery.of(context).size.width,
          child: Stack(
            children: [
              for (int i = 1; i <= 6; i++)
                Positioned(
                  left: nodePositions[i - 1],
                  top: 50.0 + (i - 1) * 120,
                  child: RoadmapNode(
                    title: _getDayTitle(i),
                    isCompleted: exerciseProvider.isDayCompleted(i),
                    isUnlocked: exerciseProvider.isDayUnlocked(i),
                    onTap: () => onNodeTap(i),
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }

  List<double> _generateRandomNodePositions(int count, double screenWidth) {
    final random = Random();
    return List.generate(count, (index) => random.nextDouble() * (screenWidth - 100));
  }

  String _getDayTitle(int day) {
    switch (day) {
      case 1:
        return 'Adjectives';
      case 2:
        return 'Adverbs';
      case 3:
        return 'Conjunctions';
      case 4:
        return 'Prefix & Suffix';
      case 5:
        return 'Sentence Structure';
      case 6:
        return 'Verbs';
      default:
        return '';
    }
  }
}
