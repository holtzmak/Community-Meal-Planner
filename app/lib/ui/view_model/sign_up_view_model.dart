import 'package:app/service/dialog_service.dart';
import 'package:app/service/firebase_auth_service.dart';
import 'package:app/service/navigation_service.dart';
import 'package:app/service/service_locator.dart';
import 'package:app/ui/screen/home_screen.dart';
import 'package:app/ui/screen/log_in_screen.dart';
import 'package:app/ui/widget/template_view_model.dart';

class SignUpViewModel extends ViewModel {
  final FirebaseAuthService _firebaseAuthService =
      ServiceLocator.get<FirebaseAuthService>();
  final DialogService _dialogService = ServiceLocator.get<DialogService>();
  final NavigationService _navigationService =
      ServiceLocator.get<NavigationService>();

  void navigateToLoginScreen() =>
      _navigationService.navigateAndReplace(LogInScreen.route);

  void navigateToHomeScreen() =>
      _navigationService.navigateBackUntil(HomeScreen.route);

  Future<void> signUp({
    required String name,
    required List<String> titles,
    required String aboutMeDescription,
    required String email,
    required String password,
  }) async {
    _firebaseAuthService
        .signUp(
            name: name,
            titles: titles,
            aboutMeDescription: aboutMeDescription,
            email: email,
            password: password)
        .then((_) => _dialogService.showDialog(
            title: 'You can now login with your new account!',
            description: "Thanks for signing up!"))
        .then((_) => navigateToLoginScreen())
        .catchError((error) => _dialogService.showDialog(
              title: 'Signup failed!',
              description: "Here's what we think went wrong:\n${error.message}",
            ));
  }
}
