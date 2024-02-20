void main(List<String> args) {

  int x = 45;
  print('the divisors of $x');
  List lst =[];
  for (int i =1 ; i <= x ; i++){

    if (x%i==0){
      lst.add(i);
    }
  }
  print(lst);
}