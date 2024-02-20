import 'dart:io';

void main(List<String> args) {
  
  Map birthdayMap = {'Albert Einstein':'13/11/2001','Benjamin Franklin':'01/17/1706','Ada Lovelace':'24/11/2001'};
  print('>>> Welcome to the birthday dictionary. We know the birthdays of :');
    birthdayMap.forEach((key, value) { 
    print(key);
  });

  print(">>> Who's birthday do you went to look up?");
  String? person = stdin.readLineSync()!;
  bool checker = false;
  birthdayMap.forEach((key, value) { 
  if (key==person) checker = true;

  });

  (checker ) ? print(">>> $person's birthday is ${birthdayMap[person]}") : print("unValid name");

}