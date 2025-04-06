import 'dart:io';
void main(){
  List<Map<String, dynamic>> students = [
    {"name": "Alice", "scores": [85, 90, 78]},
    {"name": "Bob", "scores": [88, 76, 95]},
    {"name": "Charlie", "scores": [90, 92, 85]},
  ];
  Map<String, double> avgScores = {};

  for (var student in students) {
    String name = student['name'];
    List<int> scores = List<int>.from(student['scores']);
    double avg = scores.reduce((a, b) => a + b) / scores.length;

    // Round to 2 decimal places
    avgScores[name] = double.parse(avg.toStringAsFixed(2));
  }
}