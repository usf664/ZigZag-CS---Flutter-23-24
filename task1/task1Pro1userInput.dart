import 'dart:io';

void main(List<String> args) {
  
  print('Hallo my frind, Enter Ur Numder (integer)');
  int? x = int.parse(stdin.readLineSync()!);

  List lst = [];
  for (int i = 1 ; i <= x ; i++) {
    if (x % i == 0) {
      lst.add(i);
    }
  }
  print('the divisors2 of $x');
  print(lst);
}
