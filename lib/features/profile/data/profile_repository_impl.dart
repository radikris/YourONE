import 'dart:convert';
import 'dart:io' as io;
import 'package:path/path.dart';
import 'package:async/async.dart';
import 'dart:io';
import 'package:http/http.dart' as http;

import 'package:injectable/injectable.dart';
import 'package:yourone/entities/user_profile.dart';
import 'package:yourone/features/profile/data/profile_repository.dart';
import 'package:yourone/swagger_generated_code/your_one_service.swagger.dart';

@LazySingleton(as: ProfileRepository)
class ProfileRepositoryImpl implements ProfileRepository {
  YourOneService api;
  ProfileRepositoryImpl({required this.api});

  @override
  Future<UserProfile> getProfile() async {
    return await api
        .apiPersonMeGet()
        .then((value) => UserProfile.fromJson(value.body!.toJson()));
  }

  @override
  Future<UserProfile> updateProfile(UserProfile profile) async {
    return await api
        .apiPersonIdPut(
            id: profile.id, newData: CreatePersonDTO.fromJson(profile.toJson()))
        .then((value) => UserProfile.fromJson(value.body!.toJson()));
  }

  @override
  Future<String> uploadImage(io.File? imageFile) async {
    await api.apiPersonUploadPost(file: []);
    /*    var stream =
        new http.ByteStream(DelegatingStream.typed(imageFile.openRead()));
    var length = await imageFile.length();

    var uri = http.Uri.parse(uploadURL);

    var request = new http.MultipartRequest("POST", uri);
    var multipartFile = new http.MultipartFile('file', stream, length,
        filename: basename(imageFile.path));
    //contentType: new MediaType('image', 'png'));

    request.files.add(multipartFile);
    var response = await request.send();
    print(response.statusCode);
    response.stream.transform(utf8.decoder).listen((value) {
      print(value);
    }); */
    return '';
  }
}
