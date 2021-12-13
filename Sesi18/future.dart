import 'dart:math';

final _random = new Random();

int getRandomInt(int min, int max) {
  return min + _random.nextInt(max - min);
}

Future<String> executeAsync(int min, int max) {
  int s = getRandomInt(min, max);

  return Future.delayed(
    Duration(seconds: s),
    () => 'Execution Done in $s seconds',
  );
}

void main() {
  print('start process');

  executeAsync(1, 5).then((result) {
    print(result);
  });
  print('Waiting for execution process');
}
