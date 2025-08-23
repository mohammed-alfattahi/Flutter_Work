// TODO Implement this library.
import 'package:flutter/material.dart';
import '../widgets/input_field.dart';
import '../core/theme.dart';

class SignUpPage extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Form(
        key: _formKey,
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "إنشاء حساب",
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  color: AppTheme.primaryColor,
                ),
              ),
              SizedBox(height: 20),
              InputField(
                label: "الاسم الكامل",
                icon: Icons.person,
                validator: (v) => v!.isEmpty ? "أدخل الاسم" : null,
              ),
              InputField(
                label: "البريد الإلكتروني",
                icon: Icons.email,
                validator: (v) => v!.isEmpty ? "أدخل البريد الإلكتروني" : null,
              ),
              InputField(
                label: "كلمة المرور",
                icon: Icons.lock,
                obscure: true,
                validator: (v) =>
                    v!.length < 6 ? "كلمة المرور قصيرة جدًا" : null,
              ),
              SizedBox(height: 30),
              ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    // تنفيذ إنشاء الحساب
                  }
                },
                style: AppTheme.buttonStyle,
                child: Text("تسجيل", style: TextStyle(fontSize: 18)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
