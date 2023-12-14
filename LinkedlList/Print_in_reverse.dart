import 'LinkedList.dart';

void main() {
  LinkedList l = LinkedList();
  l.head = Node(value: 5);
  l.head?.next = Node(value: 10);
  printInReverse(l);
}

void printInReverse(LinkedList l) {
  if (l.head == null) return;
  printingOperation(l.head);
}

void printingOperation(Node? node) {
  if (node == null) return;
  printingOperation(node.next);
  print(node.value);
}
