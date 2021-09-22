import 'package:automatickeepalivemixin/wisget/keep_alive_wrapper.dart';
import 'package:automatickeepalivemixin/wisget/user_info_text_form_field.dart';
import 'package:flutter/material.dart';

final GlobalKey<FormState> primaryUserInfoFormKey = GlobalKey<FormState>();

class SecurityUserInfoTab extends StatelessWidget {
  final TextEditingController _emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: KeepAliveWrapper(
        child: Form(
          key: primaryUserInfoFormKey,
          child: Column(
            children: [
              UserInformationTextField(
                  textFormFieldController: _emailController,
                  hintText: "Enter your email address",
                  prefixIcon: Icon(Icons.email_outlined),
                  validator: (email) {
                    if (email!.length > 5) {
                      return null;
                    } else
                      return 'Enter a valid email address';
                  }),
            ],
          ),
        ),
      ),
    );
  }
}
