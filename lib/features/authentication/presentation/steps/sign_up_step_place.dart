import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:yourone/common/app_input_form.dart';
import 'package:yourone/common/app_place_picker.dart';
import 'package:yourone/features/authentication/bloc/cubit/sign_up_cubit.dart';
import 'package:yourone/features/authentication/presentation/sign_up_page.dart';

class SignUpStepPlace extends StatelessWidget implements StepIsRequired {
  const SignUpStepPlace({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppPlacePicker(
      buttonText: 'Next',
      formLabel: 'Please choose your location',
      formName: 'location',
      isRequired: isRequired(),
      onSave: (String? value, LatLng? place) {
        context.read<SignUpCubit>().handleLocation(value!);
        context.read<SignUpCubit>().nextStep();
      },
    );
  }

  @override
  bool isRequired() {
    return false;
  }

  @override
  bool isAboutYourself() {
    return true;
  }
}
