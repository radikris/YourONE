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
import 'package:yourone/features/profile/cubit/profile_cubit.dart';
import 'package:yourone/features/profile/presentation/widgets/profile_edit_tile.dart';
import 'package:yourone/features/profile/presentation/widgets/yourself_and_yourone_attributes.dart';
import 'package:yourone/injection.dart';
import 'package:yourone/theme/app_color.dart';
import 'package:yourone/theme/app_dimen.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<ProfileCubit>(
      create: (context) => getIt<ProfileCubit>(),
      child: ProfileView(),
    );
  }
}

class ProfileView extends StatelessWidget {
  ProfileView({Key? key}) : super(key: key);

  void onSave(BuildContext context, Widget child) {
    showGeneralDialog(
      context: context,
      barrierColor: Colors.white.withOpacity(0.9), // Background color
      barrierDismissible: false,
      barrierLabel: 'Dialog',
      transitionDuration: Duration(milliseconds: 400),
      pageBuilder: (_, __, ___) {
        return Column(
          children: <Widget>[
            AppAppBar.withSkip(),
            Expanded(
              child: child,
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    final state = context.watch<SignUpCubit>().state.yourSelf;
    print(state);

    return Scaffold(
      appBar: AppAppBar(title: 'Kristof', subTitle: 'Profile'),
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
                      title: 'YOUR BIO AND PHOTOS',
                      child: SignUpStepBio(),
                      initialValue: state.bio,
                    ),
                    ProfileEditTile(
                      title: 'Age',
                      child: SignUpStepAge(),
                      initialValue: state.age?.toString(),
                    ),
                    ProfileEditTile(
                      title: 'Name',
                      child: SignUpStepName(),
                    ),
                    ProfileEditTile(
                      title: 'Other age',
                      child: SignUpStepOtherAge(),
                    ),
                    ProfileEditTile(
                      title: 'Chemistry',
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
                child: AppButton.primary(text: 'SAVE', onTap: () {}),
              ))
        ],
      ),
    );
  }
}
