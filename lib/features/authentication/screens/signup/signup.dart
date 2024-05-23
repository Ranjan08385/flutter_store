import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_store/common/widgets/login_signup/form_divider.dart';
import 'package:flutter_store/common/widgets/login_signup/social_buttons.dart';
import 'package:flutter_store/utils/constants/sizes.dart';
import 'package:flutter_store/utils/constants/text_strings.dart';
import 'package:get/get.dart';

import 'widgets/signup_form.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Title
              Text(
                TTexts.signUoTitle,
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              const SizedBox(height: TSizes.spaceBtnSections),

              // Form
              const TSignupForm(),
              const SizedBox(height: TSizes.spaceBtnSections),

              // Divider
              TFormDivider(dividerText: TTexts.orSignUpWith.capitalize!),
              const SizedBox(height: TSizes.spaceBtnSections),

              // Social Buttons
              const TSocialButtons(),
            ],
          ),
        ),
      ),
    );
  }
}
