import 'package:flutter/material.dart';

import 'text.dart';

class Builder1 extends StatelessWidget {
  static TextEditingController nameController = TextEditingController();
  static TextEditingController usernameController = TextEditingController();
  static TextEditingController emailController = TextEditingController();
  static TextEditingController passController = TextEditingController();
  static TextEditingController confirmPassController = TextEditingController();
  final List dataField = [
    {
      "label": "Name",
      "icon": Icons.abc,
      "disabled": false,
      "tController": nameController
    },
    {
      "label": "User-Name",
      "icon": Icons.verified_user,
      "disabled": false,
      "tController": usernameController
    },
    {
      "label": "E-mail",
      "icon": Icons.email,
      "disabled": false,
      "tController": emailController
    },
    {
      "label": "Password",
      "icon": Icons.remove_red_eye_outlined,
      "disabled": true,
      "tController": passController
    },
    {
      "label": "Confirm Password",
      "icon": Icons.remove_red_eye_outlined,
      "disabled": true,
      "tController": passController
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Builder"),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
                itemCount: dataField.length,
                itemBuilder: (BuildContext context, index) {
                  return UserTextField(
                      tController: dataField[index]["tController"],
                      disabled: dataField[index]["disabled"],
                      icon: dataField[index]["icon"],
                      label: dataField[index]["label"]);
                }

                ),
          ),
        ],
      ),
    );
  }
}
