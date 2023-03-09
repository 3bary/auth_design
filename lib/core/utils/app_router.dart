import 'package:auth_design/features/auth/views/login_view.dart';
import 'package:auth_design/features/auth/views/onboarding_view.dart';
import 'package:auth_design/features/auth/views/signup_view.dart';
import 'package:go_router/go_router.dart';


abstract class AppRouter {

  static const String kLoginView = '/loginView';
  static const String kSignupView = '/signupView';

  static final router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const OnboardingView(),
      ),
      GoRoute(
        path: kLoginView,
        builder: (context, state) => const LoginView(),
      ),
      GoRoute(
        path: kSignupView,
        builder: (context, state) => const SignupView(),
      ),
    ],
  );
}
