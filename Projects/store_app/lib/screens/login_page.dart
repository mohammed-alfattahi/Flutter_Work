import 'package:flutter/material.dart';
import '../widgets/input_field.dart';
import '../core/theme.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final _formKey = GlobalKey<FormState>();
    return SingleChildScrollView(
      padding: const EdgeInsets.symmetric(vertical: 30),
      child: Center(
        child: ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 520),
          child: Card(
            elevation: 10,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(AppTheme.cardRadius),
            ),
            margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
            child: Padding(
              padding: const EdgeInsets.all(22),
              child: Form(
                key: _formKey,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      'تسجيل الدخول',
                      style: TextStyle(
                        fontSize: 26,
                        fontWeight: FontWeight.bold,
                        color: AppTheme.primaryColor,
                      ),
                    ),
                    const SizedBox(height: 12),
                    const InputField(
                      label: 'البريد الإلكتروني',
                      icon: Icons.email,
                      keyboardType: TextInputType.emailAddress,
                    ),
                    const InputField(
                      label: 'كلمة المرور',
                      icon: Icons.lock,
                      obscure: true,
                    ),
                    const SizedBox(height: 18),
                    ElevatedButton(
                      style: AppTheme.ElevatedButtonStyle,
                      onPressed: () {
                        if (_formKey.currentState!.validate()) {
                          // TODO: تسجيل الدخول
                        }
                      },
                      child: const SizedBox(
                        width: double.infinity,
                        child: Center(child: Text('دخول')),
                      ),
                    ),
                    const SizedBox(height: 8),
                    TextButton(
                      onPressed: () {
                        // نستخدم التنقل إذا أردنا
                      },
                      child: Text(
                        'نسيت كلمة المرور؟',
                        style: TextStyle(color: AppTheme.primaryLight),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
