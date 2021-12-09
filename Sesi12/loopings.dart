void main() {
  // While Loop #1
  /*
    int counter = 0;
    
    while (counter < 5) {
      print("Counter : $counter");
      counter++;
    }
  */

  // While Loop #2

  /*
    int index = 0;

    List <String> students = ['Airell', 'Lana', 'William', 'Mike'];

    while (index < students.length) {
      print("${students[index]} at position ${index + 1}");
      index++;
    }
  */

  //Do While Loop
  /*
    int counter = 0;

    do{
      print('Counter: $counter');
      counter++;
    }while(counter < 5)
  */

  //For Loop
  /*
  List<String> students = ['Airell', 'Lana', 'William', 'Mike'];

  for(int i = 0; i < students.length; i++) {
    print('${students[i]} at position ${i + 1}');
  }
  */

  // For Loop (In List)
  /*
  List<String> students = ['Airell', 'Lana', 'William', 'Mike'];

  List<Map<String, Object>> studentDatas = [
    for(int i = 0; i < students.length; i++)
      {"id": i+1, "name": students[i]}
  ];

  print(studentDatas);
  

  List<int> nums = [1,2,3,4,5,6,7,8,9,10]
  */

  //For Loop break keyword
  /*
  List<int> nums = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
  for (int i = 0; i < nums.length; i++) {
    if ((i + 1) > (nums.length / 2)) break;
    print(nums[i]);
  }
  */

  // For Loop(continue keyword)
  /*
  for (int i = 0; i < 10; i++) {
    if (i % 2 == 0) continue;
    print(i);
  }
  */

  // For in loop
  /*
  List<String> students = ['Airell', 'Lana', 'William', 'Mike'];
  for (var i in students) {
    print(i);
  }
  */

  //For in loop (in list)
  /*
  List<int> nums = [1, 2, 3, 4, 5];
  List<String> newNums = ['#0', for (var i in nums) '#$i'];

  print(newNums);
  */
}
