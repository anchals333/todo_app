import 'package:equatable/equatable.dart';

class TodoModel extends Equatable {
   String title;
   String description;
   bool isDone;

   TodoModel(
      {required this.title, required this.description, this.isDone = false});

  @override
  List<Object?> get props => [title, description];
}
