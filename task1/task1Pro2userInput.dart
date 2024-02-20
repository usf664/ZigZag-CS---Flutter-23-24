import 'dart:io';

void main(List<String> args) {

  List x = [];
  List y = [];

  print('Hallo my frind, Enter Ur 1st list size');
  int? i = int.parse(stdin.readLineSync()!);//استقبال حجم الليست الاولي 
  print('Enter Ur 1st list elements');
  for(; i!>0 ; i--){       //لوب بحجم الليست
    x.add( int.parse(stdin.readLineSync()!) );//استقبال عناصر الليست الاولي و اضافتها لليست
  }

  print('Enter Ur 2nd list size');
  i = int.parse(stdin.readLineSync()!);
  print('Enter Ur 2nd list elements');
  for(; i!>0 ; i--){
    y.add( int.parse(stdin.readLineSync()!) );
  }

  List common = commonValues(x, y);
  if (common.length != 0) {
    print('Here ur common Values between two Lists :');
    print(common);
  } else {
    print('No common Values between two Lists');
  }

}

List commonValues (List x,List y){
  Set z={};//لمنع تكرار الارقام 

  x.forEach((i) {
    y.forEach((j) {
      if (i==j)
        z.add(i);
    });
  });
  return z.toList();
}