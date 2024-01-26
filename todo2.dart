import 'dart:io';

import 'todoapp.dart';

void main() {
  List<Map> todo = [];

  while (true) {
    print("enter the choice\n1. Add\n2. Remove\n3. View\n ");
    var choice = int.parse(stdin.readLineSync()!);

    switch (choice) {
      case 1:
        addTodo(todo);
        break;
      case 2:
        removeTodo(todo);
        break;
      case 3:
        viewTodo(todo);
    }
  }
}
addTodo(List todo){
  print("enter the head");
  var head=stdin.readLineSync()!;
  var id=todo.length+1;
  todo.add({"id":id.toInt(),"head": head, });
}
viewTodo(List todo){
  todo.forEach((element) {
    print("${element['id']}${element['head']}");
    print("\n");
  });
}
removeTodo(List todo){
  print("enter the index to remove : ");
  var index=int.parse(stdin.readLineSync()!);
  todo.removeAt(index);
  for(int i=1;i<todo.length;i++){
    todo[i]['id']=i+1;
  }

}
 