import 'package:flutter/material.dart';

class FormService {
  static GlobalKey<FormState> formKey = GlobalKey<FormState>();
}

class UserTextField extends StatelessWidget {
  final String label;
  final IconData? icon;
  final bool disabled;
  final TextEditingController tController;
  const UserTextField(
      {super.key,
        required this.label,
        required this.icon,
        required this.disabled,
        required this.tController});
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 10, right: 10, top: 10, bottom: 10),
      padding: const EdgeInsets.only(left: 20, top: 5, bottom: 5),
      decoration: BoxDecoration(
          border: Border.all(color:Colors.black26),
          borderRadius: BorderRadius.circular(14)),
      child: Form(
        key: FormService.formKey,
        child: TextFormField(
          controller: tController,
          textInputAction: TextInputAction.none,
          validator: (value) {
            if (label == "Password" || label == "Confirm-Password") {
              if (value == null || value.isEmpty) {
                return 'Please enter text';
              } else if (value.length < 6) {
                return 'Please enter more than 6 characters';
              }
            } else if (label == "E-mail") {
              if (value == null || value.isEmpty) {
                return 'Please enter text';
              } else if (!RegExp(r'^[\w-.]+@([\w-]+\.)+[\w]{2,4}')
                  .hasMatch(value)) {
                return 'Please enter a valid email address';
              }
            } else {
              if (value == null || value.isEmpty) {
                return 'Please enter text';
              }
            }
            return null;
          },
          obscureText: disabled,
          decoration: InputDecoration(
            icon: Icon(
              icon,
              color: Colors.teal,
            ),
            hintText: label,
            contentPadding: const EdgeInsets.only(left: 15),
            border: InputBorder.none,
          ),
        ),
      ),
    );
  }
}