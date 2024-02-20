import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo_list/cubit/todo_cubit.dart';
import 'package:todo_list/todo_model/todo_model.dart';

class TodoList extends StatelessWidget {
  const TodoList({Key? key}) : super(key: key); // Key argument should be Key? key

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Todo List'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pushNamed(context, '/add-todo');
        },
        tooltip: 'Add Todo',
        child: const Icon(Icons.add),
      ),
      body: BlocBuilder<TodoCubit, List<Todo>>(
        builder: (context, state) {
          // Use the state provided by the TodoCubit
          return ListView.builder(
            itemCount: state.length, // Use state.length instead of todos.length
            itemBuilder: (context, index) {
              final todo = state[index]; // Access todo from the state
              return ListTile(
                title: Text(todo.name),
                // You might want to add more widgets here to display other properties of the todo
              );
            },
          );
        },
      ),
    );
  }
}
