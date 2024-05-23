import 'package:flutter/material.dart';
import 'package:flutter_store/common/styles/spacing_styles.dart';
import 'package:flutter_store/common/widgets/login_signup/form_divider.dart';
import 'package:flutter_store/common/widgets/login_signup/social_buttons.dart';
import 'package:flutter_store/utils/constants/sizes.dart';
import 'package:flutter_store/utils/constants/text_strings.dart';
import 'package:get/get.dart';

import 'widgets/login_form.dart';
import 'widgets/login_header.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: TSpacingStyle.paddingWithAppBarHeight,
          child: Column(
            children: [
              const TLoginHeader(),
              // Form
              const TLoginForm(),
              // Divider
              TFormDivider(dividerText: TTexts.orSignInWith.capitalize!),
              const SizedBox(height: TSizes.spaceBtnSections),
              // Footer
              const TSocialButtons(),
            ],
          ),
        ),
      ),
    );
  }
}