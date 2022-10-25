import 'dart:io';
import 'dart:math';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:yourone/entities/enum_types/job_type.dart';
import 'package:yourone/entities/file_or_url.dart';
import 'package:yourone/entities/user_profile.dart';
import 'package:yourone/features/authentication/data/auth_repository.dart';

import 'package:yourone/features/authentication/data/auth_store.dart';

part 'sign_up_state.dart';
part 'sign_up_cubit.freezed.dart';

@injectable
class SignUpCubit extends Cubit<SignUpState> {
  final AuthRepository authRepository;
  final AuthStore store;

  SignUpCubit(this.authRepository, this.store)
      : super(SignUpState(
            currentStep: 0,
            yourOne: UserProfile(),
            yourSelf: UserProfile(
              images: [0, 1, 2, 3].map((key) => FileOrUrl(id: key)).toList(),
            )));

  Future<void> handleLogin(
    String email,
    String password,
  ) async {
    emit(state.copyWith(email: email, password: password));
    final token = await authRepository.login();
    print(token);
    store.login(token);
  }

  void handleRegister(
    String email,
    String password,
    String phoneNumber,
  ) async {
    emit(state.copyWith(
        email: email, password: password, phoneNumber: phoneNumber));
    final token = await authRepository.register();
    store.login(token);
  }

  void handleName(String name, {bool isAboutYourself = true}) {
    isAboutYourself
        ? emit(state.copyWith(yourSelf: state.yourSelf.copyWith(name: name)))
        : emit(state.copyWith(yourOne: state.yourOne.copyWith(name: name)));
  }

  void handleAgeRange(int min, int max, {bool isAboutYourself = true}) {
    emit(state.copyWith(
        yourSelf: state.yourSelf.copyWith(minAge: min, maxAge: max)));
  }

  void handleAge(int age, {bool isAboutYourself = true}) {
    isAboutYourself
        ? emit(state.copyWith(yourSelf: state.yourSelf.copyWith(age: age)))
        : emit(state.copyWith(yourOne: state.yourOne.copyWith(age: age)));
  }

  void handleGender(Gender? gender, {bool isAboutYourself = true}) {
    isAboutYourself
        ? emit(
            state.copyWith(yourSelf: state.yourSelf.copyWith(gender: gender)))
        : emit(state.copyWith(yourOne: state.yourOne.copyWith(gender: gender)));
  }

  void handleJobType(JobType? jobType, {bool isAboutYourself = true}) {
    isAboutYourself
        ? emit(
            state.copyWith(yourSelf: state.yourSelf.copyWith(jobType: jobType)))
        : emit(
            state.copyWith(yourOne: state.yourOne.copyWith(jobType: jobType)));
  }

  void handleEducationLevel(EducationLevel? educationLevel,
      {bool isAboutYourself = true}) {
    isAboutYourself
        ? emit(state.copyWith(
            yourSelf: state.yourSelf.copyWith(educationLevel: educationLevel)))
        : emit(state.copyWith(
            yourOne: state.yourOne.copyWith(educationLevel: educationLevel)));
  }

  void handleCigarettes(Cigarettes? cigarettes, {bool isAboutYourself = true}) {
    isAboutYourself
        ? emit(state.copyWith(
            yourSelf: state.yourSelf.copyWith(cigarettes: cigarettes)))
        : emit(state.copyWith(
            yourOne: state.yourOne.copyWith(cigarettes: cigarettes)));
  }

  void handleAlcohol(Alcohol? alcohol, {bool isAboutYourself = true}) {
    isAboutYourself
        ? emit(
            state.copyWith(yourSelf: state.yourSelf.copyWith(alcohol: alcohol)))
        : emit(
            state.copyWith(yourOne: state.yourOne.copyWith(alcohol: alcohol)));
  }

  void handleChildren(Children? children, {bool isAboutYourself = true}) {
    isAboutYourself
        ? emit(state.copyWith(
            yourSelf: state.yourSelf.copyWith(children: children)))
        : emit(state.copyWith(
            yourOne: state.yourOne.copyWith(children: children)));
  }

  void handleMarriage(Marriage? marriage, {bool isAboutYourself = true}) {
    isAboutYourself
        ? emit(state.copyWith(
            yourSelf: state.yourSelf.copyWith(marriage: marriage)))
        : emit(state.copyWith(
            yourOne: state.yourOne.copyWith(marriage: marriage)));
  }

  void handleMusicTaste(List<MusicTaste>? musicTaste,
      {bool isAboutYourself = true}) {
    isAboutYourself
        ? emit(state.copyWith(
            yourSelf: state.yourSelf.copyWith(musicTaste: musicTaste)))
        : emit(state.copyWith(
            yourOne: state.yourOne.copyWith(musicTaste: musicTaste)));
  }

  void handleMovieGenre(List<MovieGenre>? movieGenre,
      {bool isAboutYourself = true}) {
    isAboutYourself
        ? emit(state.copyWith(
            yourSelf: state.yourSelf.copyWith(movieGenre: movieGenre)))
        : emit(state.copyWith(
            yourOne: state.yourOne.copyWith(movieGenre: movieGenre)));
  }

  void handleLanguages(List<Languages>? languages,
      {bool isAboutYourself = true}) {
    isAboutYourself
        ? emit(state.copyWith(
            yourSelf: state.yourSelf.copyWith(languages: languages)))
        : emit(state.copyWith(
            yourOne: state.yourOne.copyWith(languages: languages)));
  }

  void handleHobbies(List<Hobbies>? hobbies, {bool isAboutYourself = true}) {
    isAboutYourself
        ? emit(
            state.copyWith(yourSelf: state.yourSelf.copyWith(hobbies: hobbies)))
        : emit(
            state.copyWith(yourOne: state.yourOne.copyWith(hobbies: hobbies)));
  }

  void handleReligion(Religion? religion, {bool isAboutYourself = true}) {
    isAboutYourself
        ? emit(state.copyWith(
            yourSelf: state.yourSelf.copyWith(religion: religion)))
        : emit(state.copyWith(
            yourOne: state.yourOne.copyWith(religion: religion)));
  }

  void handleHoroscope(Horoscope? horoscope, {bool isAboutYourself = true}) {
    isAboutYourself
        ? emit(state.copyWith(
            yourSelf: state.yourSelf.copyWith(horoscope: horoscope)))
        : emit(state.copyWith(
            yourOne: state.yourOne.copyWith(horoscope: horoscope)));
  }

  void handleTattoo(Tattoo? tattoo, {bool isAboutYourself = true}) {
    isAboutYourself
        ? emit(
            state.copyWith(yourSelf: state.yourSelf.copyWith(tattoo: tattoo)))
        : emit(state.copyWith(yourOne: state.yourOne.copyWith(tattoo: tattoo)));
  }

  void handlePiercing(Piercing? piercing, {bool isAboutYourself = true}) {
    isAboutYourself
        ? emit(state.copyWith(
            yourSelf: state.yourSelf.copyWith(piercing: piercing)))
        : emit(state.copyWith(
            yourOne: state.yourOne.copyWith(piercing: piercing)));
  }

  void handleHairColor(HairColor? hairColor, {bool isAboutYourself = true}) {
    isAboutYourself
        ? emit(state.copyWith(
            yourSelf: state.yourSelf.copyWith(hairColor: hairColor)))
        : emit(state.copyWith(
            yourOne: state.yourOne.copyWith(hairColor: hairColor)));
  }

  void handleEyeColor(EyeColor? eyeColor, {bool isAboutYourself = true}) {
    isAboutYourself
        ? emit(state.copyWith(
            yourSelf: state.yourSelf.copyWith(eyeColor: eyeColor)))
        : emit(state.copyWith(
            yourOne: state.yourOne.copyWith(eyeColor: eyeColor)));
  }

  void handleGlasses(Glasses? glasses, {bool isAboutYourself = true}) {
    isAboutYourself
        ? emit(
            state.copyWith(yourSelf: state.yourSelf.copyWith(glasses: glasses)))
        : emit(
            state.copyWith(yourOne: state.yourOne.copyWith(glasses: glasses)));
  }

  void handleSportiness(Sportiness? sportiness, {bool isAboutYourself = true}) {
    isAboutYourself
        ? emit(state.copyWith(
            yourSelf: state.yourSelf.copyWith(sportiness: sportiness)))
        : emit(state.copyWith(
            yourOne: state.yourOne.copyWith(sportiness: sportiness)));
  }

  void handleShape(Shape? shape, {bool isAboutYourself = true}) {
    isAboutYourself
        ? emit(state.copyWith(yourSelf: state.yourSelf.copyWith(shape: shape)))
        : emit(state.copyWith(yourOne: state.yourOne.copyWith(shape: shape)));
  }

  void handleFacialHair(FacialHair? facialHair, {bool isAboutYourself = true}) {
    isAboutYourself
        ? emit(state.copyWith(
            yourSelf: state.yourSelf.copyWith(facialHair: facialHair)))
        : emit(state.copyWith(
            yourOne: state.yourOne.copyWith(facialHair: facialHair)));
  }

  void handleBreastSize(BreastSize? breastSize, {bool isAboutYourself = true}) {
    isAboutYourself
        ? emit(state.copyWith(
            yourSelf: state.yourSelf.copyWith(breastSize: breastSize)))
        : emit(state.copyWith(
            yourOne: state.yourOne.copyWith(breastSize: breastSize)));
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

  void nextStep() {
    emit(state.copyWith(currentStep: state.currentStep + 1));
  }

  void backStep() {
    emit(state.copyWith(currentStep: state.currentStep - 1));
  }
}
