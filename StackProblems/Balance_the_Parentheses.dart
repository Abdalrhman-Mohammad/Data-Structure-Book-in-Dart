import 'Stack.dart';

void main() {
  String s = "(())()";
  print(CheckBalancing(s));
  s = "(())())";
  print(CheckBalancing(s));
  s = "(())()(";
  print(CheckBalancing(s));
}

bool CheckBalancing(String s) {
  Stack<String> st = Stack<String>();
  bool ans = true;
  for (int i = 0; i < s.length; i++) {
    if (s[i] == '(')
      st.push("(");
    else {
      if (st.isEmpty) {
        ans = false;
        break;
      }
      st.pop();
    }
  }
  if (!st.isEmpty) ans = false;
  return ans;
}
