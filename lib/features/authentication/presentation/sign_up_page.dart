import 'package:auto_route/auto_route.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:yourone/auto_router.gr.dart';
import 'package:yourone/common/app_app_bar.dart';
import 'package:yourone/features/authentication/bloc/cubit/sign_up_cubit.dart';
import 'package:yourone/features/authentication/presentation/steps/sign_up_multi_step.dart';
import 'package:yourone/features/authentication/presentation/steps/sign_up_single_step.dart';
import 'package:yourone/features/authentication/presentation/steps/sign_up_step_account.dart';
import 'package:yourone/features/authentication/presentation/steps/sign_up_step_age.dart';
import 'package:yourone/features/authentication/presentation/steps/sign_up_step_bio.dart';
import 'package:yourone/features/authentication/presentation/steps/sign_up_step_name.dart';
import 'package:yourone/features/authentication/presentation/steps/sign_up_step_other_age.dart';
import 'package:yourone/features/authentication/presentation/steps/sign_up_step_other_chemistry.dart';
import 'package:yourone/features/authentication/presentation/steps/sign_up_step_place.dart';
import 'package:yourone/features/authentication/presentation/steps/sign_up_success_step.dart';
import 'package:yourone/features/authentication/presentation/steps/sign_up_switch_role_step.dart';
import 'package:yourone/entities/enum_types/job_type.dart';
import 'package:yourone/theme/app_dimen.dart';
import 'package:yourone/theme/text_styles.dart';

abstract class StepIsRequired {
  bool isRequired();
  bool isAboutYourself();
}

class SignUpPage extends StatefulWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  late List<Widget> steps;

  @override
  void initState() {
    super.initState();
    final cubit = context.read<SignUpCubit>();
    List<Widget> generateEnumForm(bool aboutYourself) {
      return [
        SignUpStepSingle<Gender>(
          options: Gender.values,
          formName: 'gender',
          formLabel: '',
          onSave: (Gender? value) => cubit.handleTest(),
          required: true,
          aboutYourself: aboutYourself,
        ),
        SignUpStepSingle<JobType>(
          options: JobType.values,
          formName: 'jobType',
          formLabel: '',
          onSave: (JobType? value) => cubit.handleTest(),
          required: false,
          aboutYourself: aboutYourself,
        ),
        SignUpStepSingle<EducationLevel>(
          options: EducationLevel.values,
          formName: 'educationLevel',
          formLabel: '',
          onSave: (EducationLevel? value) => cubit.handleTest(),
          required: true,
          aboutYourself: aboutYourself,
        ),
        SignUpStepSingle<Cigarettes>(
          options: Cigarettes.values,
          formName: 'cigarette',
          formLabel: '',
          onSave: (Cigarettes? value) => cubit.handleTest(),
          required: false,
          aboutYourself: aboutYourself,
        ),
        SignUpStepSingle<Alcohol>(
          options: Alcohol.values,
          formName: 'alcohol',
          formLabel: '',
          onSave: (Alcohol? value) => cubit.handleTest(),
          required: false,
          aboutYourself: aboutYourself,
        ),
        SignUpStepSingle<Children>(
          options: Children.values,
          formName: 'cigarette',
          formLabel: '',
          onSave: (Children? value) => cubit.handleTest(),
          required: false,
          aboutYourself: aboutYourself,
        ),
        SignUpStepSingle<Marriage>(
          options: Marriage.values,
          formName: 'alcohol',
          formLabel: '',
          onSave: (Marriage? value) => cubit.handleTest(),
          required: false,
          aboutYourself: aboutYourself,
        ),
        SignUpStepMulti<MusicTaste>(
          options: MusicTaste.values,
          formName: 'music',
          formLabel: '',
          onSave: (List<MusicTaste>? value) => cubit.handleTest(),
          required: false,
          aboutYourself: aboutYourself,
        ),
        SignUpStepMulti<MovieGenre>(
          options: MovieGenre.values,
          formName: 'movie',
          formLabel: '',
          onSave: (List<MovieGenre>? value) => cubit.handleTest(),
          required: false,
          aboutYourself: aboutYourself,
        ),
        SignUpStepSingle<Religion>(
          options: Religion.values,
          formName: 'religion',
          formLabel: '',
          onSave: (Religion? value) => cubit.handleTest(),
          required: false,
          aboutYourself: aboutYourself,
        ),
        SignUpStepSingle<Horoscope>(
          options: Horoscope.values,
          formName: 'horoscope',
          formLabel: '',
          onSave: (Horoscope? value) => cubit.handleTest(),
          required: false,
          aboutYourself: aboutYourself,
        ),
        SignUpStepMulti<Languages>(
          options: Languages.values,
          formName: 'languages',
          formLabel: '',
          onSave: (List<Languages>? value) => cubit.handleTest(),
          required: false,
          aboutYourself: aboutYourself,
        ),
        SignUpStepMulti<Hobbies>(
          options: Hobbies.values,
          formName: 'hobbies',
          formLabel: '',
          onSave: (List<Hobbies>? value) => cubit.handleTest(),
          required: false,
          aboutYourself: aboutYourself,
        ),
        SignUpStepSingle<Tattoo>(
          options: Tattoo.values,
          formName: 'tattoo',
          formLabel: '',
          onSave: (Tattoo? value) => cubit.handleTest(),
          required: false,
          aboutYourself: aboutYourself,
        ),
        SignUpStepSingle<Piercing>(
          options: Piercing.values,
          formName: 'piercing',
          formLabel: '',
          onSave: (Piercing? value) => cubit.handleTest(),
          required: false,
          aboutYourself: aboutYourself,
        ),
        SignUpStepSingle<HairColor>(
          options: HairColor.values,
          formName: 'hairColor',
          formLabel: '',
          onSave: (HairColor? value) => cubit.handleTest(),
          required: false,
          aboutYourself: aboutYourself,
        ),
        SignUpStepSingle<EyeColor>(
          options: EyeColor.values,
          formName: 'eyeColor',
          formLabel: '',
          onSave: (EyeColor? value) => cubit.handleTest(),
          required: false,
          aboutYourself: aboutYourself,
        ),
        SignUpStepSingle<Glasses>(
          options: Glasses.values,
          formName: 'glasses',
          formLabel: '',
          onSave: (Glasses? value) => cubit.handleTest(),
          required: false,
          aboutYourself: aboutYourself,
        ),
        SignUpStepSingle<Sportiness>(
          options: Sportiness.values,
          formName: 'sportiness',
          formLabel: '',
          onSave: (Sportiness? value) => cubit.handleTest(),
          required: false,
          aboutYourself: aboutYourself,
        ),
        SignUpStepSingle<Shape>(
          options: Shape.values,
          formName: 'shape',
          formLabel: '',
          onSave: (Shape? value) => cubit.handleTest(),
          required: false,
          aboutYourself: aboutYourself,
        ),
        SignUpStepSingle<FacialHair>(
          options: FacialHair.values,
          formName: 'facialHair',
          formLabel: '',
          onSave: (FacialHair? value) => cubit.handleTest(),
          required: false,
          aboutYourself: aboutYourself,
        ),
        SignUpStepSingle<BreastSize>(
          options: BreastSize.values,
          formName: 'breastSize',
          formLabel: '',
          onSave: (BreastSize? value) => cubit.handleTest(),
          required: false,
          aboutYourself: aboutYourself,
        ),
      ];
    }

    steps = [
      SignUpStepAccount(),
      SignUpStepBio(),

      /*      SignUpStepName(),
      SignUpStepBio(),
      SignUpStepAge(),
      SignUpStepPlace(), */
      ...generateEnumForm(true),
      SignUpStepOtherAge(),
      SignUpSwitchRoleStep(),
      SignUpStepOtherChemistry(),
      ...generateEnumForm(false),
    ];
  }

  @override
  Widget build(BuildContext context) {
    final step = context.watch<SignUpCubit>().state.currentStep;
    final isStepRequired = steps.length > step
        ? (steps[step] as StepIsRequired).isRequired()
        : false;

    return Scaffold(
      resizeToAvoidBottomInset: true,
      appBar: AppAppBar.withSkip(
        title: (steps[step] as StepIsRequired).isAboutYourself()
            ? 'About yourelf'
            : 'About Your One',
        subTitle: '${steps.length}/${step + 1}',
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
            showGeneralDialog(
              context: context,
              barrierColor: Colors.white.withOpacity(0.9),
              barrierDismissible: false,
              barrierLabel: 'Dialog',
              pageBuilder: (_, __, ___) {
                return SignUpSuccessStep();
              },
            );
            Future.delayed(Duration(seconds: 1), () {
              context.replaceRoute(HomeSwipeRoute());
            });
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
