import 'package:flutter/material.dart';

class AppTheme {
  static const Color primaryColor = Color(0xFF0D47A1); // 
  static const Color primaryLight = Color(0xFF1976D2); // 
  static const Color accentColor = Color(0xFF64B5F6);

  static final inputBorder = OutlineInputBorder(
    borderRadius: BorderRadius.circular(12),
    borderSide: BorderSide(color: Colors.grey.shade300),
  );

  static final ElevatedButtonStyle = ElevatedButton.styleFrom(
    backgroundColor: primaryColor,
    elevation: 6,
    padding: const EdgeInsets.symmetric(horizontal: 28, vertical: 14),
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
    textStyle: const TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
  );


  static BoxDecoration backgroundGradient() {
    return const BoxDecoration(
      gradient: LinearGradient(
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
        colors: [Color(0xFF0D47A1), Color(0xFF1976D2)],
      ),
    );
  }

  static const double cardRadius = 16;
}
