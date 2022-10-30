import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:yourone/common/app_app_bar.dart';
import 'package:yourone/common/app_primary_button.dart';
import 'package:yourone/features/authentication/bloc/cubit/sign_up_cubit.dart';
import 'package:yourone/features/authentication/presentation/steps/sign_up_step_age.dart';
import 'package:yourone/features/authentication/presentation/steps/sign_up_step_bio.dart';
import 'package:yourone/features/authentication/presentation/steps/sign_up_step_name.dart';
import 'package:yourone/features/authentication/presentation/steps/sign_up_step_other_age.dart';
import 'package:yourone/features/authentication/presentation/steps/sign_up_step_other_chemistry.dart';
import 'package:yourone/features/profile/presentation/widgets/profile_edit_tile.dart';
import 'package:yourone/features/profile/presentation/widgets/yourself_and_yourone_attributes.dart';
import 'package:yourone/injection.dart';
import 'package:yourone/theme/app_color.dart';
import 'package:yourone/theme/app_dimen.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    context.read<SignUpCubit>().fetchProfile();
    return ProfileView();
  }
}

class ProfileView extends StatelessWidget {
  ProfileView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final state = context.watch<SignUpCubit>().state;

    return Scaffold(
      appBar: AppAppBar(
          title: state.yourSelf.name ?? '',
          subTitle: 'Profile',
          backWithAction: () {
            context.read<SignUpCubit>().updateProfile();
          }),
      body: Stack(
        children: [
          SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            child: Padding(
              padding: AppDimen.horizontal16Vertical24,
              child: Container(
                child: Column(
                  children: [
                    CircleAvatar(
                      radius: 66,
                      backgroundColor: AppColor.primary,
                      child: CircleAvatar(
                          radius: 64,
                          backgroundImage: NetworkImage(
                              'https://i.insider.com/5c48ef432bdd7f659443dc94?width=600&format=jpeg')),
                    ),
                    SizedBox(
                      height: 32,
                    ),
                    ProfileEditTile(
                      title: 'Name',
                      initialValue: state.yourSelf.name,
                      child: SignUpStepName(),
                    ),
                    ProfileEditTile(
                      title: 'YOUR BIO AND PHOTOS',
                      initialValue: state.yourSelf.bio,
                      child: SignUpStepBio(),
                    ),
                    ProfileEditTile(
                      title: 'Age',
                      initialValue: state.yourSelf.birthDate?.toString(),
                      child: SignUpStepAge(),
                    ),
                    ProfileEditTile(
                      title: 'Other age',
                      initialValue:
                          '${state.yourSelf.minAge} - ${state.yourSelf.maxAge}',
                      child: SignUpStepOtherAge(),
                    ),
                    ProfileEditTile(
                      title: 'Chemistry',
                      initialValue:
                          '${state.yourSelf.chemistry?.toString() ?? ''} %',
                      child: SignUpStepOtherChemistry(),
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    YourSelfAndYourOneAttributes(),
                    SizedBox(
                      height: 64,
                    ),
                  ],
                ),
              ),
            ),
          ),
          Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Padding(
                padding: AppDimen.all16,
                child: AppButton.primary(
                    text: 'SAVE',
                    onTap: () {
                      context.read<SignUpCubit>().updateProfile();
                    }),
              ))
        ],
      ),
    );
  }
}
