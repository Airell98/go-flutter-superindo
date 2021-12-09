void main() {
  dynamic randomData  = 10;
  randomData = 'Airell';
  randomData = true;
  randomData = ['123', 123, true];
  randomData = {
    "apple": 4000,
    "steak": 10000,
  };
  
  dynamic val = "10";
  
  int num = val; //<-- error at compile-time
}