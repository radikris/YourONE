import 'package:auto_route/auto_route.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:yourone/auto_router.gr.dart';
import 'package:flutter/material.dart';
import 'package:yourone/common/app_app_bar.dart';
import 'package:yourone/common/app_primary_button.dart';
import 'package:yourone/features/authentication/bloc/cubit/sign_up_cubit.dart';
import 'package:yourone/entities/enum_types/enums.dart';
import 'package:yourone/theme/app_color.dart';
import 'package:yourone/theme/app_dimen.dart';
import 'package:yourone/theme/text_styles.dart';

class SignInPage extends StatelessWidget {
  SignInPage({Key? key}) : super(key: key);
  final _formKey = GlobalKey<FormBuilderState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppAppBar.withSkip(),
      bottomSheet: Container(
        margin: EdgeInsets.only(bottom: 16),
        padding: AppDimen.horizontal16,
        height: 56,
        child: AppButton.primary(
          text: 'Sign in',
          onTap: () async {
            if (_formKey.currentState?.saveAndValidate() ?? false) {
              final email = _formKey.currentState?.value['email'];
              final password = _formKey.currentState?.value['password'];
              await context.read<SignUpCubit>().handleLogin(email, password);
              context.replaceRoute(HomeSwipeRoute());
            }
          },
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: AppDimen.horizontal16Vertical24,
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Flexible(
                    flex: 1,
                    child: Text(
                      "Glad you are back",
                      style: TextStyles.bold34,
                      textAlign: TextAlign.left,
                    ),
                  ),
                  Flexible(
                    flex: 1,
                    child: Icon(
                      Icons.heart_broken,
                      size: 64,
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 32,
              ),
              FormBuilder(
                key: _formKey,
                autovalidateMode: AutovalidateMode.onUserInteraction,
                onChanged: () {
                  _formKey.currentState!.save();
                  debugPrint(_formKey.currentState!.value.toString());
                },
                child: Column(
                  children: [
                    FormBuilderTextField(
                        initialValue: context.read<SignUpCubit>().state.email,
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        name: 'email',
                        decoration: const InputDecoration(labelText: 'Email'),
                        textInputAction: TextInputAction.next,
                        validator: FormBuilderValidators.compose([
                          FormBuilderValidators.required(),
                          FormBuilderValidators.email()
                        ]),
                        keyboardType: TextInputType.emailAddress),
                    FormBuilderTextField(
                        initialValue:
                            context.read<SignUpCubit>().state.password,
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        name: 'password',
                        obscureText: true,
                        decoration:
                            const InputDecoration(labelText: 'Password'),
                        textInputAction: TextInputAction.next,
                        validator: FormBuilderValidators.compose([
                          FormBuilderValidators.required(),
                          FormBuilderValidators.minLength(6),
                        ]),
                        keyboardType: TextInputType.text),
                  ],
                ),
              ),
              SizedBox(
                height: 16,
              ),
              GestureDetector(
                onTap: () {
                  context.pushRoute(SignUpRoute());
                },
                child: RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(
                    style: DefaultTextStyle.of(context).style,
                    children: <TextSpan>[
                      TextSpan(
                          text: "Don't have an account?",
                          style: TextStyles.bold12.copyWith(
                            color: AppColor.black70,
                          )),
                      TextSpan(
                          text: ' Sign up here',
                          style: TextStyles.bold12.copyWith(
                            color: AppColor.primary,
                          )),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 16,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
