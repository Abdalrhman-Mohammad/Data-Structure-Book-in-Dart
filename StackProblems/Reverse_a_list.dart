import 'Stack.dart';

void main() {
  List l = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
  ReverseAList(l);
}

void ReverseAList(List l) {
  Stack s = Stack();
  for (int i = 0; i < l.length; i++) {
    s.push(l[i]);
  }
  while (!s.isEmpty) {
    print(s.pop());
  }
}
