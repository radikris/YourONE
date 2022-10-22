import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:yourone/entities/enum_types/job_type.dart';
import 'package:yourone/features/authentication/bloc/cubit/sign_up_cubit.dart';
import 'package:yourone/features/authentication/presentation/steps/sign_up_multi_step.dart';
import 'package:yourone/features/authentication/presentation/steps/sign_up_single_step.dart';
import 'package:yourone/features/profile/cubit/profile_cubit.dart';
import 'package:yourone/features/profile/presentation/widgets/profile_edit_tile.dart';

import '../../../../theme/text_styles.dart';

class YourSelfAndYourOneAttributes extends StatefulWidget {
  const YourSelfAndYourOneAttributes({Key? key}) : super(key: key);

  @override
  State<YourSelfAndYourOneAttributes> createState() =>
      _YourSelfAndYourOneAttributesState();
}

class _YourSelfAndYourOneAttributesState
    extends State<YourSelfAndYourOneAttributes>
    with SingleTickerProviderStateMixin {
  TabController? _tabController;
  @override
  void initState() {
    _tabController = TabController(length: 2, vsync: this);
    super.initState();
  }

  List<Widget> generateEnumForm(bool aboutYourself) {
    final cubit = context.read<SignUpCubit>();
    final stateAll = context.read<SignUpCubit>().state;
    final state = aboutYourself ? stateAll.yourSelf : stateAll.yourOne;
    return [
      SignUpStepSingle<Gender>(
        options: Gender.values,
        formName: 'gender',
        formLabel: '',
        onSave: (Gender? value) =>
            cubit.handleGender(value), //isAboutYourself: aboutYourself
        required: true,
        aboutYourself: aboutYourself,
        initialValue: state.gender,
      ),
      SignUpStepSingle<JobType>(
        options: JobType.values,
        formName: 'jobType',
        formLabel: '',
        onSave: (JobType? value) => cubit.handleJobType(value),
        required: false,
        aboutYourself: aboutYourself,
        initialValue: state.jobType,
      ),
      SignUpStepSingle<EducationLevel>(
        options: EducationLevel.values,
        formName: 'educationLevel',
        formLabel: '',
        onSave: (EducationLevel? value) => cubit.handleEducationLevel(value),
        required: true,
        aboutYourself: aboutYourself,
        initialValue: state.educationLevel,
      ),
      SignUpStepSingle<Cigarettes>(
        options: Cigarettes.values,
        formName: 'cigarette',
        formLabel: '',
        onSave: (Cigarettes? value) => cubit.handleCigarettes(value),
        required: false,
        aboutYourself: aboutYourself,
        initialValue: state.cigarettes,
      ),
      SignUpStepSingle<Alcohol>(
        options: Alcohol.values,
        formName: 'alcohol',
        formLabel: '',
        onSave: (Alcohol? value) => cubit.handleAlcohol(value),
        required: false,
        aboutYourself: aboutYourself,
        initialValue: state.alcohol,
      ),
      SignUpStepSingle<Children>(
        options: Children.values,
        formName: 'children',
        formLabel: '',
        onSave: (Children? value) => cubit.handleChildren(value),
        required: false,
        aboutYourself: aboutYourself,
        initialValue: state.children,
      ),
      SignUpStepSingle<Marriage>(
        options: Marriage.values,
        formName: 'alcohol',
        formLabel: '',
        onSave: (Marriage? value) => cubit.handleMarriage(value),
        required: false,
        aboutYourself: aboutYourself,
        initialValue: state.marriage,
      ),
      SignUpStepMulti<MusicTaste>(
        options: MusicTaste.values,
        formName: 'music',
        formLabel: '',
        onSave: (List<MusicTaste>? value) => cubit.handleMusicTaste(value),
        required: false,
        aboutYourself: aboutYourself,
        initialValue: state.musicTaste,
      ),
      SignUpStepMulti<MovieGenre>(
        options: MovieGenre.values,
        formName: 'movie',
        formLabel: '',
        onSave: (List<MovieGenre>? value) => cubit.handleMovieGenre(value),
        required: false,
        aboutYourself: aboutYourself,
        initialValue: state.movieGenre,
      ),
      SignUpStepSingle<Religion>(
        options: Religion.values,
        formName: 'religion',
        formLabel: '',
        onSave: (Religion? value) => cubit.handleReligion(value),
        required: false,
        aboutYourself: aboutYourself,
        initialValue: state.religion,
      ),
      SignUpStepSingle<Horoscope>(
        options: Horoscope.values,
        formName: 'horoscope',
        formLabel: '',
        onSave: (Horoscope? value) => cubit.handleHoroscope(value),
        required: false,
        aboutYourself: aboutYourself,
        initialValue: state.horoscope,
      ),
      SignUpStepMulti<Languages>(
        options: Languages.values,
        formName: 'languages',
        formLabel: '',
        onSave: (List<Languages>? value) => cubit.handleLanguages(value),
        required: false,
        aboutYourself: aboutYourself,
        initialValue: state.languages,
      ),
      SignUpStepMulti<Hobbies>(
        options: Hobbies.values,
        formName: 'hobbies',
        formLabel: '',
        onSave: (List<Hobbies>? value) => cubit.handleHobbies(value),
        required: false,
        aboutYourself: aboutYourself,
        initialValue: state.hobbies,
      ),
      SignUpStepSingle<Tattoo>(
        options: Tattoo.values,
        formName: 'tattoo',
        formLabel: '',
        onSave: (Tattoo? value) => cubit.handleTattoo(value),
        required: false,
        aboutYourself: aboutYourself,
        initialValue: state.tattoo,
      ),
      SignUpStepSingle<Piercing>(
        options: Piercing.values,
        formName: 'piercing',
        formLabel: '',
        onSave: (Piercing? value) => cubit.handlePiercing(value),
        required: false,
        aboutYourself: aboutYourself,
        initialValue: state.piercing,
      ),
      SignUpStepSingle<HairColor>(
        options: HairColor.values,
        formName: 'hairColor',
        formLabel: '',
        onSave: (HairColor? value) => cubit.handleHairColor(value),
        required: false,
        aboutYourself: aboutYourself,
        initialValue: state.hairColor,
      ),
      SignUpStepSingle<EyeColor>(
        options: EyeColor.values,
        formName: 'eyeColor',
        formLabel: '',
        onSave: (EyeColor? value) => cubit.handleEyeColor(value),
        required: false,
        aboutYourself: aboutYourself,
        initialValue: state.eyeColor,
      ),
      SignUpStepSingle<Glasses>(
        options: Glasses.values,
        formName: 'glasses',
        formLabel: '',
        onSave: (Glasses? value) => cubit.handleGlasses(value),
        required: false,
        aboutYourself: aboutYourself,
        initialValue: state.glasses,
      ),
      SignUpStepSingle<Sportiness>(
        options: Sportiness.values,
        formName: 'sportiness',
        formLabel: '',
        onSave: (Sportiness? value) => cubit.handleSportiness(value),
        required: false,
        aboutYourself: aboutYourself,
        initialValue: state.sportiness,
      ),
      SignUpStepSingle<Shape>(
        options: Shape.values,
        formName: 'shape',
        formLabel: '',
        onSave: (Shape? value) => cubit.handleShape(value),
        required: false,
        aboutYourself: aboutYourself,
        initialValue: state.shape,
      ),
      SignUpStepSingle<FacialHair>(
        options: FacialHair.values,
        formName: 'facialHair',
        formLabel: '',
        onSave: (FacialHair? value) => cubit.handleFacialHair(value),
        required: false,
        aboutYourself: aboutYourself,
        initialValue: state.facialHair,
      ),
      SignUpStepSingle<BreastSize>(
        options: BreastSize.values,
        formName: 'breastSize',
        formLabel: '',
        onSave: (BreastSize? value) => cubit.handleBreastSize(value),
        required: false,
        aboutYourself: aboutYourself,
        initialValue: state.breastSize,
      ),
    ];
  }

  Widget buildAttributesList(bool isAboutYourself) {
    final listAttributes = generateEnumForm(isAboutYourself);
    return ListView.builder(
      itemCount: listAttributes.length,
      itemBuilder: (BuildContext context, int index) {
        return ProfileEditTile(title: 'Szia', child: listAttributes[index]);
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height,
      child: Column(
        children: [
          TabBar(
            unselectedLabelColor: Colors.black,
            labelColor: Colors.red,
            tabs: [
              Tab(
                child: Text(
                  'YourSelf',
                  style: TextStyles.bold16,
                ),
              ),
              Tab(
                child: Text(
                  'YourOne',
                  style: TextStyles.bold16,
                ),
              ),
            ],
            controller: _tabController,
            indicatorSize: TabBarIndicatorSize.tab,
          ),
          Expanded(
            child: TabBarView(
              children: [buildAttributesList(true), buildAttributesList(false)],
              controller: _tabController,
            ),
          ),
        ],
      ),
    );
  }
}
