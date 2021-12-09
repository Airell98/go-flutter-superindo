import '../Sesi12/relational-operator.dart';

void main() {
  // print(introduce('Airell', 23));

  // Positional Parameters
  /*
  const students = ['Airell', 'Joey', 'Lana'];

  print(findStudents(students));
  print(findStudents([], 'Lana'));
  print(findStudents(students, 'Airell'));
  */

// Positional Parameters
/*
  List<Map<String, Object>> students = [
    {'name': 'Airell', 'score': 98},
    {
      'name': 'Lana',
      'score': 55,
    },
    {
      'name': 'Yohan',
      'score': 82,
    }
  ];

  for (var s in students) {
    var result = checkGrade(
      name: (s['name'] as String),
      score: (s['score'] as int),
    );
    print(result);
  }
  */

  //Anonymous Function
  /*
  List<int> numbers = [2, 5, 8, 10, 33, 99, 2];
  int find = findOddNumbers(numbers, (int n) {
    return n % 2 != 0;
  });

  print('Total odd numbers: $find');
  */
}

String introduce(String name, int exp) {
  return "Hi, I'm $name, and I'm $exp years old";
}

String findStudents(List<String> datas, [String? student]) {
  if (student == null) return 'Student name required!';
  if (datas.isEmpty) return 'Data can\'t be empty';

  int? index;

  for (var i = 0; i < datas.length; i++) {
    if (datas[i].toLowerCase() == student.toLowerCase()) index = i;
  }
  return index != null ? 'Student exist on index $index' : 'Student not found';
}

String checkGrade({String? name, int? score}) {
  return (score as int) >= 80 ? '$name lulus' : '$name tidak lulus';
}

void paramTest(p1, {int np1 = 25, int? np2}) {
  print('##############################');
  print('Param Value Is: $p1');
  print('Named Param 1 Value Is: $np1');
  print('Named Param 2 Value Is: $np2');
}

int findOddNumbers(List<int> numbers, Function callBack) {
  int totalOddNumbers = 0;

  for (var n in numbers) {
    if (callBack(n)) totalOddNumbers++;
  }

  return totalOddNumbers;
}
