import 'package:auto_route/auto_route.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:yourone/auto_router.gr.dart';
import 'package:flutter/material.dart';
import 'package:yourone/common/app_app_bar.dart';
import 'package:yourone/common/app_primary_button.dart';
import 'package:yourone/features/authentication/bloc/cubit/sign_up_cubit.dart';
import 'package:yourone/models/enum_types/job_type.dart';
import 'package:yourone/theme/app_color.dart';
import 'package:yourone/theme/app_dimen.dart';
import 'package:yourone/theme/text_styles.dart';

import '../../common/app_multiple_choice.dart';

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
          onTap: () {
            //TODO VALIDATION
            context.replaceRoute(HomeSwipeRoute());

            if (_formKey.currentState?.saveAndValidate() ?? false) {
              debugPrint(_formKey.currentState?.value.toString());
              context.read<SignUpCubit>().handleTest();
            } else {
              debugPrint(_formKey.currentState?.value.toString());
              debugPrint('validation failed');
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
