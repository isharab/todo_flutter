import 'package:hive/hive.dart';

class ToDoDatabase {
  List todoList = [];
  // reference our hive box
  final _myBox = Hive.box('myBox');

  // run this method if this is the first time the app is opened
  void createInitialData() {
    todoList = [
      ['Buy milk', false],
      ['Buy eggs', false],
      ['Buy bread', false],
    ];
  }

  // load the data from database
  void loadData() {
    todoList = _myBox.get(
      'todoList',
    );
  }

  // update the database
  void updateDataBase() {
    _myBox.put('todoList', todoList);
  }
}
