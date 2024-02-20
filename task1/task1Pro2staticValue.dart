void main(List<String> args) {
  List x = [1, 5, 6, 8, 9, 3, 7, 5, 6, 4];
  List y = [9, 6, 7, 3, 1];
  List common = commonValues(x, y);
  if (common.length != 0) {
    print('Here ur common Values between two Lists :');
    print(common);
  } else {
    print('No common Values between two Lists');
  }
}

List commonValues(List x, List y) {
  Set z = {}; //لمنع تكرار الارقام

  for (var i in x) for (var j in y) if (i == j) z.add(i);

  return z.toList();
}
