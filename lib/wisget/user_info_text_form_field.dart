import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class UserInformationTextField extends StatelessWidget {
  final TextEditingController textFormFieldController ;
  final String? Function(String? val) validator;
  // final String? Function(String? val) onSaved;
  final String hintText;
  final Icon? prefixIcon;
  final Widget? suffixIcon;
  final bool passwordVisibility;
  final TextInputType? keyboardType;

  const UserInformationTextField({
    required this.textFormFieldController,
    required this.validator,
    // required this.onSaved,
    required this.hintText,
    this.prefixIcon = null,
    this.suffixIcon = null,
    this.passwordVisibility = false,
    this.keyboardType = null
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: keyboardType,
      inputFormatters: keyboardType != null ? <TextInputFormatter>[
        FilteringTextInputFormatter.allow(RegExp(r'[0-9]')),
      ] : null,
      obscureText: this.passwordVisibility,
      controller: this.textFormFieldController,
      validator: this.validator,
      //    onSaved:onSaved ,
      decoration: InputDecoration(
        hintText: this.hintText,
        prefixIcon: this.prefixIcon,
        suffixIcon: this.suffixIcon,
        focusedBorder: kTextFieldFocusBorderStyle,
        border: kTextFieldNormalBorderStyle,
      ),
    );
  }
}

final kTextFieldNormalBorderStyle = OutlineInputBorder(
  borderSide: BorderSide(color: Color(0xFF1A237E),width: 2),
  borderRadius: BorderRadius.all(
    Radius.circular(10.0),
  ),
);

final kTextFieldFocusBorderStyle = OutlineInputBorder(
  borderSide: BorderSide(color: Color(0xFF1A237E),width: 2),
  borderRadius: BorderRadius.all(
    Radius.circular(10.0),
  ),
);