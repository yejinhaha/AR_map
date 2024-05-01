import 'dart:async';

Future<int> sumStream(Stream<int> stream) async{
  var sum = 0;
  await for (var value in stream) {
    print('Sumstream: $value');
    sum += value;
  }
  return sum;
}

Stream<int> countStream(int to) async* {
  for(int i=0; i<=to; i++){
    print('customStream : $i');
    yield i;
  }
}

main() async {
  var stream = countStream(10);
  var sum = await sumStream(stream);
  print(sum);
}
