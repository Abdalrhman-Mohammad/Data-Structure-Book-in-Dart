import 'LinkedList.dart';

void main() {
  LinkedList l = LinkedList();
  l.head = Node(value: 5);
  l.head?.next = Node(value: 10);
  l.head?.next?.next = Node(value: 11);
  l.head?.next?.next?.next = Node(value: 12);
  LinkedList? reversedLinkedList = reverseALinkedList(l);
  print(reversedLinkedList);
}

LinkedList? reverseALinkedList(LinkedList? l) {
  if (l == null || l.head == null) return l;
  Node? lastNode = reverseOperation(null, l.head);
  LinkedList ret = LinkedList();
  ret.head = lastNode;
  return ret;
}

Node? reverseOperation(Node? past, Node? curr) {
  Node? ret = curr?.next != null ? reverseOperation(curr, curr?.next) : curr;
  curr?.next = past;
  return ret;
}
