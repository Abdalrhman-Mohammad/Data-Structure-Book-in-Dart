import 'LinkedList.dart';

void main() {
  LinkedList l = LinkedList();
  l.head = Node(value: 5);
  print(findTheMiddleNode(l)?.value);
  l.head?.next = Node(value: 10);
  print(findTheMiddleNode(l)?.value);
  l.head?.next?.next = Node(value: 11);
  print(findTheMiddleNode(l)?.value);
  l.head?.next?.next?.next = Node(value: 12);
  print(findTheMiddleNode(l)?.value);
}

Node? findTheMiddleNode(LinkedList? l) {
  if (l?.head == null) return null;
  Node? fast = l?.head?.next;
  Node? slow = l?.head;
  while (fast != null && fast.next != null) {
    fast = fast.next?.next;
    slow = slow?.next;
  }
  return slow;
}
