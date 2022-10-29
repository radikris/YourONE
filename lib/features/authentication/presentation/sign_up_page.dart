import 'package:auto_route/auto_route.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:yourone/auto_router.gr.dart';
import 'package:yourone/common/app_app_bar.dart';
import 'package:yourone/entities/user_profile.dart';
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
import 'package:yourone/entities/enum_types/enums.dart';
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
    final stateAll = context.read<SignUpCubit>().state;
    List<Widget> generateEnumForm(bool aboutYourself) {
      final state = aboutYourself ? stateAll.yourSelf : stateAll.yourOne;
      return [
        SignUpStepSingle<Gender>(
          options: Gender.values,
          formName: 'gender',
          formLabel: '',
          onSave: (Gender? value) => cubit.handleGender(value,
              isAboutYourself: aboutYourself), //isAboutYourself: aboutYourself
          required: true,
          aboutYourself: aboutYourself,
          initialValue: state.gender,
        ),
        SignUpStepSingle<JobType>(
          options: JobType.values,
          formName: 'jobType',
          formLabel: '',
          onSave: (JobType? value) =>
              cubit.handleJobType(value, isAboutYourself: aboutYourself),
          required: false,
          aboutYourself: aboutYourself,
          initialValue: state.jobType,
        ),
        SignUpStepSingle<EducationLevel>(
          options: EducationLevel.values,
          formName: 'educationLevel',
          formLabel: '',
          onSave: (EducationLevel? value) =>
              cubit.handleEducationLevel(value, isAboutYourself: aboutYourself),
          required: true,
          aboutYourself: aboutYourself,
          initialValue: state.educationLevel,
        ),
        SignUpStepSingle<Cigarettes>(
          options: Cigarettes.values,
          formName: 'cigarette',
          formLabel: '',
          onSave: (Cigarettes? value) =>
              cubit.handleCigarettes(value, isAboutYourself: aboutYourself),
          required: false,
          aboutYourself: aboutYourself,
          initialValue: state.cigarettes,
        ),
        SignUpStepSingle<Alcohol>(
          options: Alcohol.values,
          formName: 'alcohol',
          formLabel: '',
          onSave: (Alcohol? value) =>
              cubit.handleAlcohol(value, isAboutYourself: aboutYourself),
          required: false,
          aboutYourself: aboutYourself,
          initialValue: state.alcohol,
        ),
        SignUpStepSingle<Children>(
          options: Children.values,
          formName: 'children',
          formLabel: '',
          onSave: (Children? value) =>
              cubit.handleChildren(value, isAboutYourself: aboutYourself),
          required: false,
          aboutYourself: aboutYourself,
          initialValue: state.children,
        ),
        SignUpStepSingle<Marriage>(
          options: Marriage.values,
          formName: 'alcohol',
          formLabel: '',
          onSave: (Marriage? value) =>
              cubit.handleMarriage(value, isAboutYourself: aboutYourself),
          required: false,
          aboutYourself: aboutYourself,
          initialValue: state.marriage,
        ),
        SignUpStepMulti<MusicTaste>(
          options: MusicTaste.values,
          formName: 'music',
          formLabel: '',
          onSave: (List<MusicTaste>? value) =>
              cubit.handleMusicTaste(value, isAboutYourself: aboutYourself),
          required: false,
          aboutYourself: aboutYourself,
          initialValue: state.musicTaste,
        ),
        SignUpStepMulti<MovieGenre>(
          options: MovieGenre.values,
          formName: 'movie',
          formLabel: '',
          onSave: (List<MovieGenre>? value) =>
              cubit.handleMovieGenre(value, isAboutYourself: aboutYourself),
          required: false,
          aboutYourself: aboutYourself,
          initialValue: state.movieGenre,
        ),
        SignUpStepSingle<Religion>(
          options: Religion.values,
          formName: 'religion',
          formLabel: '',
          onSave: (Religion? value) =>
              cubit.handleReligion(value, isAboutYourself: aboutYourself),
          required: false,
          aboutYourself: aboutYourself,
          initialValue: state.religion,
        ),
        SignUpStepSingle<Horoscope>(
          options: Horoscope.values,
          formName: 'horoscope',
          formLabel: '',
          onSave: (Horoscope? value) =>
              cubit.handleHoroscope(value, isAboutYourself: aboutYourself),
          required: false,
          aboutYourself: aboutYourself,
          initialValue: state.horoscope,
        ),
        SignUpStepMulti<Languages>(
          options: Languages.values,
          formName: 'languages',
          formLabel: '',
          onSave: (List<Languages>? value) =>
              cubit.handleLanguages(value, isAboutYourself: aboutYourself),
          required: false,
          aboutYourself: aboutYourself,
          initialValue: state.languages,
        ),
        SignUpStepMulti<Hobbies>(
          options: Hobbies.values,
          formName: 'hobbies',
          formLabel: '',
          onSave: (List<Hobbies>? value) =>
              cubit.handleHobbies(value, isAboutYourself: aboutYourself),
          required: false,
          aboutYourself: aboutYourself,
          initialValue: state.hobbies,
        ),
        SignUpStepSingle<Tattoo>(
          options: Tattoo.values,
          formName: 'tattoo',
          formLabel: '',
          onSave: (Tattoo? value) =>
              cubit.handleTattoo(value, isAboutYourself: aboutYourself),
          required: false,
          aboutYourself: aboutYourself,
          initialValue: state.tattoo,
        ),
        SignUpStepSingle<Piercing>(
          options: Piercing.values,
          formName: 'piercing',
          formLabel: '',
          onSave: (Piercing? value) =>
              cubit.handlePiercing(value, isAboutYourself: aboutYourself),
          required: false,
          aboutYourself: aboutYourself,
          initialValue: state.piercing,
        ),
        SignUpStepSingle<HairColor>(
          options: HairColor.values,
          formName: 'hairColor',
          formLabel: '',
          onSave: (HairColor? value) =>
              cubit.handleHairColor(value, isAboutYourself: aboutYourself),
          required: false,
          aboutYourself: aboutYourself,
          initialValue: state.hairColor,
        ),
        SignUpStepSingle<EyeColor>(
          options: EyeColor.values,
          formName: 'eyeColor',
          formLabel: '',
          onSave: (EyeColor? value) =>
              cubit.handleEyeColor(value, isAboutYourself: aboutYourself),
          required: false,
          aboutYourself: aboutYourself,
          initialValue: state.eyeColor,
        ),
        SignUpStepSingle<Glasses>(
          options: Glasses.values,
          formName: 'glasses',
          formLabel: '',
          onSave: (Glasses? value) =>
              cubit.handleGlasses(value, isAboutYourself: aboutYourself),
          required: false,
          aboutYourself: aboutYourself,
          initialValue: state.glasses,
        ),
        SignUpStepSingle<Sportiness>(
          options: Sportiness.values,
          formName: 'sportiness',
          formLabel: '',
          onSave: (Sportiness? value) =>
              cubit.handleSportiness(value, isAboutYourself: aboutYourself),
          required: false,
          aboutYourself: aboutYourself,
          initialValue: state.sportiness,
        ),
        SignUpStepSingle<Shape>(
          options: Shape.values,
          formName: 'shape',
          formLabel: '',
          onSave: (Shape? value) =>
              cubit.handleShape(value, isAboutYourself: aboutYourself),
          required: false,
          aboutYourself: aboutYourself,
          initialValue: state.shape,
        ),
        SignUpStepSingle<FacialHair>(
          options: FacialHair.values,
          formName: 'facialHair',
          formLabel: '',
          onSave: (FacialHair? value) =>
              cubit.handleFacialHair(value, isAboutYourself: aboutYourself),
          required: false,
          aboutYourself: aboutYourself,
          initialValue: state.facialHair,
        ),
        SignUpStepSingle<BreastSize>(
          options: BreastSize.values,
          formName: 'breastSize',
          formLabel: '',
          onSave: (BreastSize? value) =>
              cubit.handleBreastSize(value, isAboutYourself: aboutYourself),
          required: false,
          aboutYourself: aboutYourself,
          initialValue: state.breastSize,
        ),
      ];
    }

    steps = [
      SignUpStepAccount(),
      SignUpStepName(),
      SignUpStepAge(),

/*       SignUpStepBio(),
      SignUpStepAge(),
      SignUpStepPlace(),
      ...generateEnumForm(true),
      SignUpStepOtherAge(),
      SignUpSwitchRoleStep(),
      SignUpStepOtherChemistry(),
      ...generateEnumForm(false), */
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
        title: steps.length > step
            ? (steps[step] as StepIsRequired).isAboutYourself()
                ? 'About yourelf'
                : 'About Your One'
            : '',
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
        listener: (context, state) async {
          if (state.currentStep == steps.length) {
            Future.delayed(Duration(seconds: 3), () {
              context.replaceRoute(HomeSwipeRoute());
            });
            await showDialog(
              context: context,
              barrierColor: Colors.white.withOpacity(0.9),
              barrierDismissible: false,
              barrierLabel: 'Dialog',
              builder: (context) {
                return const Dialog(
                    insetPadding: EdgeInsets.zero, child: SignUpSuccessStep());
              },
            );
          }
        },
        child: Padding(
          padding: AppDimen.horizontal16Vertical24,
          child: Column(
            children: [
              if (kDebugMode)
                GestureDetector(
                    onTap: () => {context.replaceRoute(HomeSwipeRoute())},
                    child: Text('Gotoswipe')),
              steps.length > step
                  ? Expanded(child: IndexedStack(index: step, children: steps))
                  : const CircularProgressIndicator(),
            ],
          ),
        ),
      ),
    );
  }
}
