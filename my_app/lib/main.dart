import 'package:flutter/material.dart';
import 'package:my_app/features/auth/presentation/login_page.dart';
import 'injection_container.dart' as di; // di = Dependency Injection

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // لود وابستگی‌ها
  await di.init();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Auth App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(useMaterial3: true),
      initialRoute: LoginPage.routeName,
      routes: {LoginPage.routeName: (_) => const LoginPage()},
    );
  }
}
