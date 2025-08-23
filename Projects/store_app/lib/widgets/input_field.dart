import 'package:flutter/material.dart';
import '../core/theme.dart';

class InputField extends StatefulWidget {
  final String label;
  final IconData icon;
  final bool obscure;
  final String? Function(String?)? validator;
  final TextInputType? keyboardType;

  const InputField({
    Key? key,
    required this.label,
    required this.icon,
    this.obscure = false,
    this.validator,
    this.keyboardType,
  }) : super(key: key);

  @override
  State<InputField> createState() => _InputFieldState();
}

class _InputFieldState extends State<InputField> {
  late bool _obscure;

  @override
  void initState() {
    super.initState();
    _obscure = widget.obscure;
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: TextFormField(
        keyboardType: widget.keyboardType,
        obscureText: _obscure,
        decoration: InputDecoration(
          labelText: widget.label,
          prefixIcon: Icon(widget.icon),
          suffixIcon: widget.obscure
              ? IconButton(
                  icon: Icon(
                    _obscure ? Icons.visibility_off : Icons.visibility,
                  ),
                  onPressed: () => setState(() => _obscure = !_obscure),
                )
              : null,
          filled: true,
          fillColor: Colors.white,
          border: AppTheme.inputBorder,
          focusedBorder: AppTheme.inputBorder.copyWith(
            borderSide: const BorderSide(
              color: AppTheme.primaryColor,
              width: 1.5,
            ),
          ),
        ),
        validator: widget.validator,
      ),
    );
  }
}
