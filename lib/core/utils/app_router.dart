
import 'package:go_router/go_router.dart';
import 'package:universityhup/features/courses/presentation/pages/about%20course/about_screen.dart';
import '../../features/layout/presentation/pages/layout.dart';
import '../../features/login/presentation/pages/login.dart';
import '../../features/onboarding/presentation/pages/onboarding.dart';
import '../../features/student_role/assignment/presentation/pages/assignment_screen.dart';
import '../../features/student_role/grade/presentation/pages/grade_screen.dart';

abstract class AppRouter {
  static const kLayout = '/Layout';
  static const kLogin = '/Login';
  static const kRegister = '/Register';
  static const kOnboarding = '/Onboarding';
  static const kAboutCourse= '/AboutCourseScreen';
  static const kAssignmentScreen= '/AssignmentScreen';
  static const kGrade= '/Grade';




  static final router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const Onboarding(),
      ),
      GoRoute(
        path: kLogin,
        builder: (context, state) => const Login(),
      ),
      GoRoute(
        path: kLayout,
        builder: (context, state) => const Layout(),
      ),
      GoRoute(
        path: kAboutCourse,
        builder: (context, state) => const AboutCourseScreen(),
      ),
      GoRoute(
        path: kAssignmentScreen,
        builder: (context, state) => const AssignmentScreen(),
      ),
      GoRoute(
        path: kGrade,
        builder: (context, state) => const GradeScreen(),
      ),

    ],
  );
}
