void main() {
  List<String> names = ['Andrew', 'Mark', 'Larry'];
  int i = 0;
  while (i < names.length) {
    print(names[i]);
    i++;
  }

  for (var doc in names) {
    print(doc);
  }
}
