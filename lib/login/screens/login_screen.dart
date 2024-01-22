import 'package:flutter/material.dart';

import 'package:provider/provider.dart';
import 'package:provider_usage_code/common/colors.dart';
import 'package:provider_usage_code/common/text_style_config.dart';
import 'package:provider_usage_code/common/widgets/custom_button.dart';
import 'package:provider_usage_code/common/widgets/custom_inkwell.dart';
import 'package:provider_usage_code/common/widgets/inputs/phone_text_field.dart';
import 'package:provider_usage_code/common/widgets/inputs/rich_text_field.dart';
import 'package:provider_usage_code/login/view_models/login_view_model.dart';


class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final formKey = GlobalKey<FormState>();
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      final loginViewModel =
      Provider.of<LoginViewModel>(context, listen: false);
      loginViewModel.init(formKey);
    });
  }

  @override
  Widget build(BuildContext context) {
    final loginViewModel = Provider.of<LoginViewModel>(context, listen: true);
    return SafeArea(
      top: true,
      bottom: false,
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SingleChildScrollView(
            child: Form(
              key: formKey,
              child: Container(
                padding: const EdgeInsets.all(35),
                child: Column(
                  children: [
                    const SizedBox(
                      height: 30,
                    ),
                    Column(
                      children: [
                        Text(
                          "Login",
                          style:
                          AppTextStyleConfig.textStyleBlack16.copyWith(
                            letterSpacing: 0.8,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        const SizedBox(height: 50),
                        PhoneTextFiled(
                          hint: "Phone number",
                          controller: loginViewModel.phoneNumberController,

                          validator: (value) {
                            return loginViewModel.phoneIsValid
                                ? null
                                : "incorrect number";
                          },
                        ),
                        const SizedBox(height: 18),
                        RichTextField(
                          hintText: "", //tran.password.tr,
                          label: "",// tran.password.tr,
                          required: true,

                          controller: loginViewModel.passwordController,
                          validator: (val) {
                            return loginViewModel.passwordIsValid
                                ? null
                                : "incorrect pass";
                          },
                          obscureText: true,
                        ),
                        const SizedBox(height: 8),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            AppInKWell(
                              onTap: () {
                                //TODO: Navigate

                              },
                              child: Text(
                               "forgot password", //TODO: Localize or read from string file,
                                style: const TextStyle(
                                  color: AppColors.blue0,
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 34),
                        CustomButton(
                          textToShow: "Login",
                          loading: loginViewModel.loading,
                          onTap: () {
                            loginViewModel.login((res) {
                              if (!mounted) return;
                              if (res.success) {
                              //TODO: Navigate
                              } else {
                              //TODO: show error message
                              }
                            });
                          },
                        )
                      ],
                    ),
                    const SizedBox(height: 25),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                         "Dont have an account?",
                          style: AppTextStyleConfig.textStyleWhite16,
                        ),
                        AppInKWell(
                          onTap: () {
                           // Get.to(() => const SignUpScreen());
                          },
                          child: Text(
                           "Signup",
                            style: AppTextStyleConfig.textStyleWhite16
                                .copyWith(
                              fontWeight: FontWeight.w700,

                            ),
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
          )



        ),
      );
  }
}
