void main() {
  var students = [
    {'name': 'Alice', 'scores': [80, 90, 85]},
    {'name': 'Bob', 'scores': [70, 75, 72]},
    {'name': 'Charlie', 'scores': [88, 92, 84]},
  ];

  Map<String, double> averages = {};

  for (var student in students) {
    String name = student['name'] as String;
    List<int> scores = student['scores'] as List<int>;

    int total = 0;
    for (var score in scores) {
      total += score;
    }

    double average = total / scores.length;
    averages[name] = double.parse(average.toStringAsFixed(2));
  }

  var sortedList = averages.entries.toList();
  sortedList.sort((a, b) => b.value.compareTo(a.value));

  print("Student Averages (High to Low):");
  for (var entry in sortedList) {
    print('${entry.key}: ${entry.value}');
  }
}