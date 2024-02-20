import 'package:bloc/bloc.dart';
import 'package:todo_list/todo_model/todo_model.dart';


class TodoCubit extends Cubit<List<Todo>> {
  TodoCubit() : super([]);
void addTodo(String title){
  if(state ==''){
    return;
  }
final todo = Todo(
  name: title,
   createAt: DateTime.now(),
  );
  state.add(todo);
  emit([...state]);
  }
@override
  void onChange(Change<List<Todo>> change) {
    // TODO: implement onChange
    super.onChange(change);
    print(change);
  }
}
