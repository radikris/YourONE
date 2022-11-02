import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:yourone/auto_router.gr.dart';
import 'package:yourone/common/app_app_bar.dart';
import 'package:yourone/common/app_multiple_choice.dart';
import 'package:yourone/common/app_primary_button.dart';
import 'package:yourone/features/authentication/bloc/cubit/sign_up_cubit.dart';
import 'package:yourone/features/authentication/presentation/sign_up_page.dart';
import 'package:yourone/gen/assets.gen.dart';
import 'package:yourone/theme/app_color.dart';
import 'package:yourone/theme/app_dimen.dart';
import 'package:yourone/theme/text_styles.dart';

class SignUpStepAccount extends StatelessWidget implements StepIsRequired {
  SignUpStepAccount({Key? key}) : super(key: key);

  final _formKey = GlobalKey<FormBuilderState>();

  @override
  Widget build(BuildContext context) {
    return ListView(
      physics: BouncingScrollPhysics(),
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Flexible(
              flex: 1,
              child: Text(
                'Please fill out the form',
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
                  initialValue: context.read<SignUpCubit>().state.phoneNumber,
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  name: 'phone',
                  decoration: const InputDecoration(labelText: 'Phone'),
                  textInputAction: TextInputAction.next,
                  validator: FormBuilderValidators.compose([
                    FormBuilderValidators.required(),
                  ]),
                  keyboardType: TextInputType.phone),
              FormBuilderTextField(
                  initialValue: context.read<SignUpCubit>().state.password,
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  name: 'password',
                  obscureText: true,
                  decoration: const InputDecoration(labelText: 'Password'),
                  textInputAction: TextInputAction.next,
                  validator: FormBuilderValidators.compose([
                    FormBuilderValidators.required(),
                    FormBuilderValidators.minLength(6),
                  ]),
                  keyboardType: TextInputType.text),
              FormBuilderCheckboxGroup<String>(
                orientation: OptionsOrientation.vertical,
                autovalidateMode: AutovalidateMode.onUserInteraction,
                decoration: const InputDecoration(
                  labelText: 'Terms and conditions',
                  border: InputBorder.none,
                ),
                name: 'terms_and_conditions',
                // initialValue: const ['Dart'],
                options: [
                  FormBuilderFieldOption(
                    value: 'terms_and_conditions',
                    child: RichText(
                      textAlign: TextAlign.center,
                      text: TextSpan(
                        style: DefaultTextStyle.of(context).style,
                        children: <TextSpan>[
                          TextSpan(
                              text: 'Terms and conditions',
                              style: TextStyles.bold12),
                          TextSpan(
                              text: ' *',
                              style: TextStyles.bold12
                                  .copyWith(color: AppColor.primary)),
                        ],
                      ),
                    ),
                  ),
                  FormBuilderFieldOption(
                    value: 'privacy_terms',
                    child: RichText(
                      textAlign: TextAlign.center,
                      text: TextSpan(
                        style: DefaultTextStyle.of(context).style,
                        children: <TextSpan>[
                          TextSpan(
                              text: 'Privacy terms', style: TextStyles.bold12),
                          TextSpan(
                              text: ' *',
                              style: TextStyles.bold12
                                  .copyWith(color: AppColor.primary)),
                        ],
                      ),
                    ),
                  ),
                ],

                validator: FormBuilderValidators.compose([
                  FormBuilderValidators.minLength(2,
                      errorText: 'Nem fogadtad el a feltételeket'),
                  FormBuilderValidators.maxLength(2),
                ]),
              ),
            ],
          ),
        ),
        AppButton.primary(
          text: 'Next',
          onTap: () {
            if (_formKey.currentState?.saveAndValidate() ?? false) {
              debugPrint(_formKey.currentState?.value.toString());
              final email = _formKey.currentState?.value['email'];
              final password = _formKey.currentState?.value['password'];
              final phone = _formKey.currentState?.value['phone'];
              context
                  .read<SignUpCubit>()
                  .handleRegister(email, password, phone);
              context.read<SignUpCubit>().nextStep();
            } else {
              debugPrint(_formKey.currentState?.value.toString());
              debugPrint('validation failed');
            }
          },
        ),
        SizedBox(
          height: 16,
        ),
        GestureDetector(
          onTap: () {
            context.replaceRoute(SignInRoute());
          },
          child: RichText(
            textAlign: TextAlign.center,
            text: TextSpan(
              style: DefaultTextStyle.of(context).style,
              children: <TextSpan>[
                TextSpan(
                    text: 'Already have an account?', style: TextStyles.bold12),
                TextSpan(
                    text: ' Sign in here',
                    style: TextStyles.bold12.copyWith(color: AppColor.primary)),
              ],
            ),
          ),
        ),
        SizedBox(
          height: 16,
        ),
      ],
    );
  }

  @override
  bool isRequired() {
    return true;
  }

  @override
  bool isAboutYourself() {
    return true;
  }
}
