void main() {
  // int num;

  // print(num); // <-- error

  // int counter = num; // <-- error

  int? num;

  print(num); 

  int counter = num as int; 

  int? n = null; //tidak terjadi error 
  String name = null; //error 
}