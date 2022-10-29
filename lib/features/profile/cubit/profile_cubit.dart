import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:yourone/entities/enum_types/enums.dart';
import 'package:yourone/entities/file_or_url.dart';
import 'package:yourone/entities/user_profile.dart';
import 'package:yourone/features/profile/data/profile_repository.dart';

part 'profile_state.dart';
part 'profile_cubit.freezed.dart';

@injectable
class ProfileCubit extends Cubit<ProfileState> {
  final ProfileRepository profileRepository;

  ProfileCubit(this.profileRepository)
      : super(ProfileState(yourSelf: UserProfile(), yourOne: UserProfile()));

  void updateProfile() async {
    final myProfile = await profileRepository.updateProfile(state.yourSelf);
  }

  void fetchProfile() async {
    final myProfile = await profileRepository.getProfile();
    emit(state.copyWith(yourSelf: myProfile));
  }

  void handleName(String name, {bool isAboutYourself = true}) {
    isAboutYourself
        ? emit(state.copyWith(yourSelf: state.yourSelf.copyWith(name: name)))
        : emit(state.copyWith(yourSelf: state.yourOne.copyWith(name: name)));
  }

  void handleAge(String birthDate, {bool isAboutYourself = true}) {
    isAboutYourself
        ? emit(state.copyWith(
            yourSelf: state.yourSelf.copyWith(birthDate: birthDate)))
        : emit(state.copyWith(
            yourSelf: state.yourOne.copyWith(birthDate: birthDate)));
  }

  void handleGender(Gender? gender, {bool isAboutYourself = true}) {
    isAboutYourself
        ? emit(
            state.copyWith(yourSelf: state.yourSelf.copyWith(gender: gender)))
        : emit(
            state.copyWith(yourSelf: state.yourOne.copyWith(gender: gender)));
  }

  void handleJobType(JobType? jobType, {bool isAboutYourself = true}) {
    isAboutYourself
        ? emit(
            state.copyWith(yourSelf: state.yourSelf.copyWith(jobType: jobType)))
        : emit(
            state.copyWith(yourSelf: state.yourOne.copyWith(jobType: jobType)));
  }

  void handleEducationLevel(EducationLevel? educationLevel,
      {bool isAboutYourself = true}) {
    isAboutYourself
        ? emit(state.copyWith(
            yourSelf: state.yourSelf.copyWith(educationLevel: educationLevel)))
        : emit(state.copyWith(
            yourSelf: state.yourOne.copyWith(educationLevel: educationLevel)));
  }

  void handleCigarettes(Cigarettes? cigarettes, {bool isAboutYourself = true}) {
    isAboutYourself
        ? emit(state.copyWith(
            yourSelf: state.yourSelf.copyWith(cigarettes: cigarettes)))
        : emit(state.copyWith(
            yourSelf: state.yourOne.copyWith(cigarettes: cigarettes)));
  }

  void handleAlcohol(Alcohol? alcohol, {bool isAboutYourself = true}) {
    isAboutYourself
        ? emit(
            state.copyWith(yourSelf: state.yourSelf.copyWith(alcohol: alcohol)))
        : emit(
            state.copyWith(yourSelf: state.yourOne.copyWith(alcohol: alcohol)));
  }

  void handleChildren(Children? children, {bool isAboutYourself = true}) {
    isAboutYourself
        ? emit(state.copyWith(
            yourSelf: state.yourSelf.copyWith(children: children)))
        : emit(state.copyWith(
            yourSelf: state.yourOne.copyWith(children: children)));
  }

  void handleMarriage(Marriage? marriage, {bool isAboutYourself = true}) {
    isAboutYourself
        ? emit(state.copyWith(
            yourSelf: state.yourSelf.copyWith(marriage: marriage)))
        : emit(state.copyWith(
            yourSelf: state.yourOne.copyWith(marriage: marriage)));
  }

  void handleMusicTaste(List<MusicTaste>? musicTaste,
      {bool isAboutYourself = true}) {
    isAboutYourself
        ? emit(state.copyWith(
            yourSelf: state.yourSelf.copyWith(musicTaste: musicTaste)))
        : emit(state.copyWith(
            yourSelf: state.yourOne.copyWith(musicTaste: musicTaste)));
  }

  void handleMovieGenre(List<MovieGenre>? movieGenre,
      {bool isAboutYourself = true}) {
    isAboutYourself
        ? emit(state.copyWith(
            yourSelf: state.yourSelf.copyWith(movieGenre: movieGenre)))
        : emit(state.copyWith(
            yourSelf: state.yourOne.copyWith(movieGenre: movieGenre)));
  }

  void handleLanguages(List<Languages>? languages,
      {bool isAboutYourself = true}) {
    isAboutYourself
        ? emit(state.copyWith(
            yourSelf: state.yourSelf.copyWith(languages: languages)))
        : emit(state.copyWith(
            yourSelf: state.yourOne.copyWith(languages: languages)));
  }

  void handleHobbies(List<Hobbies>? hobbies, {bool isAboutYourself = true}) {
    isAboutYourself
        ? emit(
            state.copyWith(yourSelf: state.yourSelf.copyWith(hobbies: hobbies)))
        : emit(
            state.copyWith(yourSelf: state.yourOne.copyWith(hobbies: hobbies)));
  }

  void handleReligion(Religion? religion, {bool isAboutYourself = true}) {
    isAboutYourself
        ? emit(state.copyWith(
            yourSelf: state.yourSelf.copyWith(religion: religion)))
        : emit(state.copyWith(
            yourSelf: state.yourOne.copyWith(religion: religion)));
  }

  void handleHoroscope(Horoscope? horoscope, {bool isAboutYourself = true}) {
    isAboutYourself
        ? emit(state.copyWith(
            yourSelf: state.yourSelf.copyWith(horoscope: horoscope)))
        : emit(state.copyWith(
            yourSelf: state.yourOne.copyWith(horoscope: horoscope)));
  }

  void handleTattoo(Tattoo? tattoo, {bool isAboutYourself = true}) {
    isAboutYourself
        ? emit(
            state.copyWith(yourSelf: state.yourSelf.copyWith(tattoo: tattoo)))
        : emit(
            state.copyWith(yourSelf: state.yourOne.copyWith(tattoo: tattoo)));
  }

  void handlePiercing(Piercing? piercing, {bool isAboutYourself = true}) {
    isAboutYourself
        ? emit(state.copyWith(
            yourSelf: state.yourSelf.copyWith(piercing: piercing)))
        : emit(state.copyWith(
            yourSelf: state.yourOne.copyWith(piercing: piercing)));
  }

  void handleHairColor(HairColor? hairColor, {bool isAboutYourself = true}) {
    isAboutYourself
        ? emit(state.copyWith(
            yourSelf: state.yourSelf.copyWith(hairColor: hairColor)))
        : emit(state.copyWith(
            yourSelf: state.yourOne.copyWith(hairColor: hairColor)));
  }

  void handleEyeColor(EyeColor? eyeColor, {bool isAboutYourself = true}) {
    isAboutYourself
        ? emit(state.copyWith(
            yourSelf: state.yourSelf.copyWith(eyeColor: eyeColor)))
        : emit(state.copyWith(
            yourSelf: state.yourOne.copyWith(eyeColor: eyeColor)));
  }

  void handleGlasses(Glasses? glasses, {bool isAboutYourself = true}) {
    isAboutYourself
        ? emit(
            state.copyWith(yourSelf: state.yourSelf.copyWith(glasses: glasses)))
        : emit(
            state.copyWith(yourSelf: state.yourOne.copyWith(glasses: glasses)));
  }

  void handleSportiness(Sportiness? sportiness, {bool isAboutYourself = true}) {
    isAboutYourself
        ? emit(state.copyWith(
            yourSelf: state.yourSelf.copyWith(sportiness: sportiness)))
        : emit(state.copyWith(
            yourSelf: state.yourOne.copyWith(sportiness: sportiness)));
  }

  void handleShape(Shape? shape, {bool isAboutYourself = true}) {
    isAboutYourself
        ? emit(state.copyWith(yourSelf: state.yourSelf.copyWith(shape: shape)))
        : emit(state.copyWith(yourSelf: state.yourOne.copyWith(shape: shape)));
  }

  void handleFacialHair(FacialHair? facialHair, {bool isAboutYourself = true}) {
    isAboutYourself
        ? emit(state.copyWith(
            yourSelf: state.yourSelf.copyWith(facialHair: facialHair)))
        : emit(state.copyWith(
            yourSelf: state.yourOne.copyWith(facialHair: facialHair)));
  }

  void handleBreastSize(BreastSize? breastSize, {bool isAboutYourself = true}) {
    isAboutYourself
        ? emit(state.copyWith(
            yourSelf: state.yourSelf.copyWith(breastSize: breastSize)))
        : emit(state.copyWith(
            yourSelf: state.yourOne.copyWith(breastSize: breastSize)));
  }

  void handleChemistry(
    int chemistry,
  ) {
    emit(state.copyWith(
        yourSelf: state.yourSelf.copyWith(
      chemistry: chemistry,
    )));
  }

  void handleLocation(
    String address,
  ) {
    emit(state.copyWith(
        yourSelf: state.yourSelf.copyWith(
      address: address,
    )));
  }

  void handleBio(
    List<FileOrUrl>? images,
    String? bio,
  ) {
    emit(state.copyWith(
        yourSelf: state.yourSelf.copyWith(images: images, bio: bio)));
  }
}
