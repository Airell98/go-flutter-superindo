void main() {
  List<String> names = ['Airell', 'Joey', 'Luna'];
  
  List<int> ages = [23, 24, 25];
  
  List<Object> randomDatas = ['Yosi', 23, true];
  
  print("Names length: ${names.length}");
  print("First index of names: ${names[0]}");
  print("Last index of names: ${names[names.length - 1]}");
  
  
  names.add('Herman');
  names[2] = 'John';
  names.remove('Joey');
  
  print(names);

  List<String> hashNumber = ["#1", "#2", "#3", "#4"];
  List<String> newHashNumber = ["#0", ...hashNumber, "#5"];

  print(newHashNumber);
}
