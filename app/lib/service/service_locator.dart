import 'package:app/service/dialog_service.dart';
import 'package:app/service/firebase_auth_service.dart';
import 'package:app/service/firebase_database_service.dart';
import 'package:app/service/navigation_service.dart';
import 'package:app/ui/view_model/home_screen_view_model.dart';
import 'package:app/ui/view_model/log_in_view_model.dart';
import 'package:app/ui/view_model/new_question_view_model.dart';
import 'package:app/ui/view_model/sign_up_view_model.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get_it/get_it.dart';

class ServiceLocator {
  static final get = GetIt.instance;

  static void setup() {
    get.registerLazySingleton<FirebaseAuth>(() => FirebaseAuth.instance);
    get.registerLazySingleton<FirebaseFirestore>(
        () => FirebaseFirestore.instance);
    get.registerLazySingleton<FirebaseDatabaseService>(
        () => FirebaseDatabaseService());
    get.registerLazySingleton<FirebaseAuthService>(() => FirebaseAuthService());
    get.registerLazySingleton<DialogService>(() => DialogService());
    get.registerLazySingleton<NavigationService>(() => NavigationService());

    get.registerFactory<SignUpViewModel>(() => SignUpViewModel());
    get.registerFactory<LogInViewModel>(() => LogInViewModel());
    get.registerFactory<HomeScreenViewModel>(() => HomeScreenViewModel());
    get.registerFactory<NewQuestionViewModel>(() => NewQuestionViewModel());
  }
}
