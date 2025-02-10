import 'package:ecommerce_admin_apps/admin_home.dart';
import 'package:ecommerce_admin_apps/controllers/auth_service.dart';
import 'package:ecommerce_admin_apps/firebase_options.dart';
import 'package:ecommerce_admin_apps/providers/admin_provider.dart';
import 'package:ecommerce_admin_apps/views/categories_page.dart';
import 'package:ecommerce_admin_apps/views/login.dart';
import 'package:ecommerce_admin_apps/views/signup.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => AdminProvider(),
      builder: (context, child) => MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Ecommerce app',
        theme: ThemeData(
            colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
            useMaterial3: true),
        routes: {
          "/": (context) => ChickUser(),
          "/loginpage": (context) => LoginPage(),
          "/signup": (context) => SignupPage(),
          "/home": (context) => AdminHome(),
          "/categories": (context) => CategoriesPage(),
        },
      ),
    );
  }
}

class ChickUser extends StatefulWidget {
  const ChickUser({super.key});

  @override
  State<ChickUser> createState() => _ChickUserState();
}

class _ChickUserState extends State<ChickUser> {
  @override
  void initState() {
    AuthService().isLoggedIn().then(
      (value) {
        if (value) {
          Navigator.pushReplacementNamed(context, "/home");
        } else {
          Navigator.pushReplacementNamed(context, "/loginpage");
        }
      },
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: CircularProgressIndicator(),
      ),
    );
  }
}
