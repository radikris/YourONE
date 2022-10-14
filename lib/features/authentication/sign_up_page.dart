import 'package:auto_route/auto_route.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:yourone/auto_router.gr.dart';
import 'package:yourone/common/app_app_bar.dart';
import 'package:yourone/features/authentication/bloc/cubit/sign_up_cubit.dart';
import 'package:yourone/features/authentication/steps/sign_up_step_1.dart';
import 'package:yourone/features/authentication/steps/sign_up_step_2.dart';
import 'package:yourone/features/authentication/steps/sign_up_step_3.dart';
import 'package:yourone/features/authentication/steps/sign_up_step_account.dart';
import 'package:yourone/features/authentication/steps/sign_up_step_age.dart';
import 'package:yourone/features/authentication/steps/sign_up_step_bio.dart';
import 'package:yourone/features/authentication/steps/sign_up_step_name.dart';
import 'package:yourone/features/authentication/steps/sign_up_step_other_age.dart';
import 'package:yourone/features/authentication/steps/sign_up_step_other_chemistry.dart';
import 'package:yourone/features/authentication/steps/sign_up_step_place.dart';
import 'package:yourone/features/authentication/steps/sign_up_switch_role_step.dart';
import 'package:yourone/theme/app_dimen.dart';

abstract class StepIsRequired {
  bool isRequired();
}

class SignUpPage extends StatelessWidget {
  const SignUpPage({Key? key}) : super(key: key);

  static final steps = [
    SignUpStepAccount(),
    SignUpStepName(),
    SignUpStepBio(),
    SignUpStepAge(),
    SignUpStepPlace(),
    SignUpStepOtherAge(),
    SignUpSwitchRoleStep(),
    SignUpStep1(),
    SignUpStep2(),
    SignUpStepOtherChemistry(),
  ];

  @override
  Widget build(BuildContext context) {
    final step = context.watch<SignUpCubit>().state.currentStep;
    final isStepRequired = steps.length > step
        ? (steps[step] as StepIsRequired).isRequired()
        : false;

    return Scaffold(
      appBar: AppAppBar.withSkip(
        title: 'Rólad',
        subTitle: '${SignUpPage.steps.length}/${step + 1}',
        backAction: step >= 1
            ? () {
                context.read<SignUpCubit>().backStep();
              }
            : null,
        rightAction: isStepRequired
            ? null
            : () {
                context.read<SignUpCubit>().nextStep();
              },
      ),
      body: BlocListener<SignUpCubit, SignUpState>(
        listener: (context, state) {
          // do stuff here based on CubitA's state
          if (state.currentStep == steps.length) {
            context.replaceRoute(HomeSwipeRoute());
          }
        },
        child: Padding(
          padding: AppDimen.horizontal16Vertical24,
          child: Column(
            children: [
              if (kDebugMode)
                GestureDetector(
                    onTap: () => context.replaceRoute(HomeSwipeRoute()),
                    child: Text('Gotoswipe')),
              if (steps.length > step) steps[step]
            ],
          ),
        ),
      ),
    );
  }
}
