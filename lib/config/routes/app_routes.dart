import 'package:clean_arch_template/features/home/presentation/pages/home.dart';

class Routes {
  static String initial = "/";
}

final routes = {
  Routes.initial: (context) => const Home(),
};
