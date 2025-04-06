import 'dart:math';

void main() {
  List<Map<String, dynamic>> students = [
    {"name": "Alice", "scores": [85, 90, 78]},
    {"name": "Bob", "scores": [88, 76, 95]},
    {"name": "Charlie", "scores": [90, 92, 85]},
  ];

  List<Map<String, dynamic>> avgList = [];

  // Calculating average
  for (int i = 0; i < students.length; i++) {
    String name = students[i]["name"];
    List<dynamic> scores = students[i]["scores"];

    int total = 0;
    for (int j = 0; j < scores.length; j++) {
      total += scores[j] as int;  
    }

    double average = total / scores.length;
    average = double.parse(average.toStringAsFixed(2));
    avgList.add({"name": name, "avg": average});
  }

  // Sorting  in descending order 
  avgList.sort((a, b) => b["avg"].compareTo(a["avg"]));

  // final result map
  Map<String, double> result = {};
  for (int i = 0; i < avgList.length; i++) {
    result[avgList[i]["name"]] = avgList[i]["avg"];
  }

  print(result);
}

