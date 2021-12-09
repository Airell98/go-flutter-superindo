void main() {
  const String name = 'Airell';

  const age = 23;

  const bool stillYoung = true;

  const Map<String, int> foodPrice = {
    "apple": 4000,
    "steak": 10000,
  };

  const int applePrice = foodPrice['apple']; // <- error
}
