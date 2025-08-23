// TODO Implement this library.
import 'package:flutter/material.dart';
import '../widgets/input_field.dart';
import '../core/theme.dart';

class ChangePasswordPage extends StatelessWidget {
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
                "تغيير كلمة السر",
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  color: AppTheme.primaryColor,
                ),
              ),
              SizedBox(height: 20),
              InputField(
                label: "كلمة السر الحالية",
                icon: Icons.lock_outline,
                obscure: true,
                validator: (v) => v!.isEmpty ? "أدخل الكلمة الحالية" : null,
              ),
              InputField(
                label: "كلمة السر الجديدة",
                icon: Icons.lock,
                obscure: true,
                validator: (v) =>
                    v!.length < 6 ? "كلمة المرور قصيرة جدًا" : null,
              ),
              SizedBox(height: 30),
              ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    // تنفيذ تحديث كلمة السر
                  }
                },
                style: AppTheme.buttonStyle,
                child: Text("تحديث", style: TextStyle(fontSize: 18)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
