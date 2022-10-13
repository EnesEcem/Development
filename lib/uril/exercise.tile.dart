import 'package:flutter/material.dart';

class ExerciseTile extends StatelessWidget {
  final icon;
  final String exerciseName;
  final int numberOfExercises;

  const ExerciseTile({
    super.key,
    this.icon,
    required this.exerciseName,
    required this.numberOfExercises,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.grey[200],
          borderRadius: BorderRadius.circular(20),
        ),
        height: 75,
        child: Center(
          child: ListTile(
              leading: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.orange),
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Icon(
                    icon,
                    color: Colors.white,
                  ),
                ),
              ),
              title: Text(exerciseName, style: TextStyle5()),
              subtitle: Text(numberOfExercises.toString() + ' Exercises',
                  selectionColor: Colors.grey)),
        ),
      ),
    );
  }
}

TextStyle TextStyle5() {
  return TextStyle(
      color: Colors.black, fontSize: 18, fontWeight: FontWeight.bold);
}
