void main() {
  Map<String, int> foodPrice = {
    "almond": 2000,
    "banana": 3000,
    "apple": 4000,
    "steak": 10000,
  };
  
  Map<String, Object> person = {
    "name": "Airell Jordan",
    "age": 23,
    "address": "Jalan Sudirman",
  };
  
  print(foodPrice["almond"]);
  print(foodPrice["Almond"]);
  
  foodPrice['apple'] = 5000;
  foodPrice['donut'] = 9000;
  
  print(foodPrice);
}
