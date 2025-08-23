import 'package:flutter/material.dart';
import 'screens/login_page.dart';
import 'screens/signup_page.dart';
import 'screens/change_password_page.dart';
import 'core/theme.dart';

void main() {
  runApp(const StoreApp());
}

class StoreApp extends StatelessWidget {
  const StoreApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Store',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: AppTheme.primaryColor,
        colorScheme: ColorScheme.fromSeed(seedColor: AppTheme.primaryColor),
        scaffoldBackgroundColor: Colors.transparent,
        appBarTheme: const AppBarTheme(elevation: 0, centerTitle: true),
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;
  final List<Widget> _pages = const [
    LoginPage(),
    SignUpPage(),
    ChangePasswordPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: AppTheme.backgroundGradient(),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          title: const Text('Flutter Store'),
          backgroundColor: Colors.transparent,
        ),
        body: _pages[_selectedIndex],
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _selectedIndex,
          selectedItemColor: AppTheme.accentColor,
          unselectedItemColor: Colors.white70,
          backgroundColor: AppTheme.primaryColor,
          onTap: (index) => setState(() => _selectedIndex = index),
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.login),
              label: 'تسجيل الدخول',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person_add),
              label: 'إنشاء حساب',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.lock_reset),
              label: 'تغيير كلمة السر',
            ),
          ],
        ),
      ),
    );
  }
}
