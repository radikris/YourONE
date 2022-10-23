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

  List<AttributeWrapper> generateEnumForm(bool aboutYourself) {
    final cubit = context.read<SignUpCubit>();
    final stateAll = context.read<SignUpCubit>().state;
    final state = aboutYourself ? stateAll.yourSelf : stateAll.yourOne;
    return [
      AttributeWrapper(
          SignUpStepSingle<Gender>(
            options: Gender.values,
            formName: 'gender',
            formLabel: '',
            onSave: (Gender? value) => cubit.handleGender(value,
                isAboutYourself:
                    aboutYourself), //isAboutYourself: aboutYourself
            required: true,
            aboutYourself: aboutYourself,
            initialValue: state.gender,
          ),
          'Gender',
          state.gender.toString()),
      AttributeWrapper(
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
          'JobType',
          state.jobType.toString()),
      AttributeWrapper(
          SignUpStepSingle<EducationLevel>(
            options: EducationLevel.values,
            formName: 'educationLevel',
            formLabel: '',
            onSave: (EducationLevel? value) => cubit.handleEducationLevel(value,
                isAboutYourself: aboutYourself),
            required: true,
            aboutYourself: aboutYourself,
            initialValue: state.educationLevel,
          ),
          'educationLevel',
          state.educationLevel.toString()),
      AttributeWrapper(
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
          'Cigarette',
          state.cigarettes.toString()),
      AttributeWrapper(
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
          'Alcohol',
          state.alcohol.toString()),
      AttributeWrapper(
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
          'children',
          state.children.toString()),
      AttributeWrapper(
          SignUpStepSingle<Marriage>(
            options: Marriage.values,
            formName: 'marriage',
            formLabel: '',
            onSave: (Marriage? value) =>
                cubit.handleMarriage(value, isAboutYourself: aboutYourself),
            required: false,
            aboutYourself: aboutYourself,
            initialValue: state.marriage,
          ),
          'Marriage',
          state.marriage.toString()),
      AttributeWrapper(
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
          'Music',
          state.musicTaste.toString()),
      AttributeWrapper(
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
          'Movie',
          state.movieGenre.toString()),
      AttributeWrapper(
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
          'Religion',
          state.religion.toString()),
      AttributeWrapper(
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
          'Horoscope',
          state.horoscope.toString()),
      AttributeWrapper(
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
          'Languages',
          state.languages.toString()),
      AttributeWrapper(
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
          'Hobbies',
          state.hobbies.toString()),
      AttributeWrapper(
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
          'Tattoo',
          state.tattoo.toString()),
      AttributeWrapper(
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
          'Piercing',
          state.piercing.toString()),
      AttributeWrapper(
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
          'HairColor',
          state.hairColor.toString()),
      AttributeWrapper(
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
          'EyeColor',
          state.eyeColor.toString()),
      AttributeWrapper(
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
          'Glasses',
          state.glasses.toString()),
      AttributeWrapper(
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
          'Sportiness',
          state.sportiness.toString()),
      AttributeWrapper(
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
          'Shape',
          state.shape.toString()),
      AttributeWrapper(
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
          'FacialHair',
          state.facialHair.toString()),
      AttributeWrapper(
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
          'BreastSize',
          state.breastSize.toString())
    ];
  }

  Widget buildAttributesList(bool isAboutYourself) {
    final listAttributes = generateEnumForm(isAboutYourself);
    return ListView.builder(
      physics: BouncingScrollPhysics(),
      itemCount: listAttributes.length,
      itemBuilder: (BuildContext context, int index) {
        return ProfileEditTile(
          title: listAttributes[index].title,
          child: listAttributes[index].child,
          initialValue: listAttributes[index].initialValue,
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height / 2,
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
              physics: BouncingScrollPhysics(),
              children: [buildAttributesList(true), buildAttributesList(false)],
              controller: _tabController,
            ),
          ),
        ],
      ),
    );
  }
}

class AttributeWrapper {
  final Widget child;
  final String title;
  final String initialValue;

  AttributeWrapper(this.child, this.title, this.initialValue);
}
