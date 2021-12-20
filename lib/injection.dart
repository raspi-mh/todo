import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get_it/get_it.dart';
import 'package:todo/application/auth/authbloc/auth_bloc.dart';
import 'package:todo/application/auth/signupform/signupform_bloc.dart';
import 'package:todo/application/todos/controller/controller_bloc.dart';
import 'package:todo/application/todos/observer/observer_bloc.dart';
import 'package:todo/application/todos/todoForm/todoform_bloc.dart';
import 'package:todo/domain/repositories/auth_repository.dart';
import 'package:todo/domain/repositories/todo_repository.dart';
import 'package:todo/infrastructure/repositories/auth_repository_impl.dart';
import 'package:todo/infrastructure/repositories/todo_repository_impl.dart';

final sl = GetIt.I; //sl == service locater

Future<void> init() async {
  //? ###################### auth #######################
  //! state managment
  sl.registerFactory(() => SignupformBloc(authRepository: sl()));
  sl.registerFactory(() => AuthBloc(authRepository: sl()));

  //! repos
  sl.registerLazySingleton<AuthRepository>(
      () => AuthRepositoryImpl(firebaseAuth: sl()));

  //! extern
  final firebase = FirebaseAuth.instance;
  sl.registerLazySingleton(() => firebase);

  //? ###################### todo #######################

  //! state management
  sl.registerFactory(() => ObserverBloc(todoRepository: sl()));
  sl.registerFactory(() => ControllerBloc(todoRepository: sl()));
  sl.registerFactory(() => TodoformBloc(todoRepository: sl()));

  //! repos
  sl.registerLazySingleton<TodoRepository>(
      () => TodoRepositoryImpl(firestore: sl()));

  //! extern
  final firestore = FirebaseFirestore.instance;
  sl.registerLazySingleton(() => firestore);
}
