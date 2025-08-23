import 'package:flutter/material.dart';
import 'package:my_frist_app/screens/change_password_page.dart';
import 'package:my_frist_app/screens/login_page.dart';
import 'package:my_frist_app/screens/signup_page.dart';

void main() {
  runApp(StoreApp());
}

class StoreApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Store',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  final List<Widget> _pages = [LoginPage(), SignUpPage(), ChangePasswordPage()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Flutter Store")),
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
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
    );
  }
}
