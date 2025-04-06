import 'dart:math';

void main() {
  List<Map<String, dynamic>> students = [
    {"name": "Alice", "scores": [85, 90, 78]},
    {"name": "Bob", "scores": [88, 76, 95]},
    {"name": "Charlie", "scores": [90, 92, 85]},
  ];

  List<Map<String, dynamic>> avgList = [];

  // Step 1: Calculate average
  for (int i = 0; i < students.length; i++) {
    String name = students[i]["name"];
    List<dynamic> scores = students[i]["scores"];

    int total = 0;
    for (int j = 0; j < scores.length; j++) {
      total += scores[j] as int;  // Fixed here
    }

    double average = total / scores.length;
    average = double.parse(average.toStringAsFixed(2));
    avgList.add({"name": name, "avg": average});
  }

  // Step 2: Sort manually in descending order
  for (int i = 0; i < avgList.length - 1; i++) {
    for (int j = i + 1; j < avgList.length; j++) {
      if (avgList[i]["avg"] < avgList[j]["avg"]) {
        var temp = avgList[i];
        avgList[i] = avgList[j];
        avgList[j] = temp;
      }
    }
  }

 
  Map<String, double> result = {};
  for (int i = 0; i < avgList.length; i++) {
    result[avgList[i]["name"]] = avgList[i]["avg"];
  }

  print(result);
}

