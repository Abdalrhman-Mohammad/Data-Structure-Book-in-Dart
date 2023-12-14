import 'LinkedList.dart';

void main() {
  LinkedList l = LinkedList();
  l.head = Node(value: 5);
  l.head?.next = Node(value: 10);
  l.head?.next?.next = Node(value: 11);
  int x = 15;
  removeAllOccurrences(x, l);
  print(l);
}

void removeAllOccurrences(int x, LinkedList l) {
  if (l.head == null) return null;
  Node? node = l.head;
  while (node != null && node.value == x) {
    node = node.next;
  }
  l.head = node;
  while (node != null && node.next != null) {
    if (node.next?.value == x) {
      node.next = node.next?.next;
    } else {
      node = node.next;
    }
  }
}
