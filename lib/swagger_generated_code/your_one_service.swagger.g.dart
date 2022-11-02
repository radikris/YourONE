// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'your_one_service.swagger.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ChatNotification _$ChatNotificationFromJson(Map<String, dynamic> json) =>
    ChatNotification(
      id: json['id'] as num,
      senderId: json['senderId'] as num,
      senderName: json['senderName'] as String,
      text: json['text'] as String,
      timeStamp: json['timeStamp'] as num,
    );

Map<String, dynamic> _$ChatNotificationToJson(ChatNotification instance) =>
    <String, dynamic>{
      'id': instance.id,
      'senderId': instance.senderId,
      'senderName': instance.senderName,
      'text': instance.text,
      'timeStamp': instance.timeStamp,
    };

CommonAttributes _$CommonAttributesFromJson(Map<String, dynamic> json) =>
    CommonAttributes(
      matches: json['matches'] as Map<String, dynamic>,
      name: json['name'] as String,
    );

Map<String, dynamic> _$CommonAttributesToJson(CommonAttributes instance) =>
    <String, dynamic>{
      'matches': instance.matches,
      'name': instance.name,
    };

CreatePersonDTO _$CreatePersonDTOFromJson(Map<String, dynamic> json) =>
    CreatePersonDTO(
      username: json['username'] as String?,
      name: json['name'] as String,
      email: json['email'] as String,
      birthDate: DateTime.parse(json['birthDate'] as String),
      height: json['height'] as int?,
      age: json['age'] as int?,
      gender: json['gender'] as int?,
      tattoo: json['tattoo'] as int?,
      eyeColour: json['eyeColour'] as int?,
      hairColour: json['hairColour'] as int?,
      piercing: json['piercing'] as int?,
      glasses: json['glasses'] as int?,
      sportiness: json['sportiness'] as int?,
      breastSize: json['breastSize'] as int?,
      bio: json['bio'] as String?,
      city: json['city'] as String?,
      jobType: json['jobType'] as int?,
      eduLevel: json['eduLevel'] as int?,
      cigarettes: json['cigarettes'] as int?,
      alcohol: json['alcohol'] as int?,
      childrenNumber: json['childrenNumber'] as int?,
      maritalStatus: json['maritalStatus'] as int?,
      musicalTaste: (json['musicalTaste'] as List<dynamic>?)
              ?.map((e) => e as int)
              .toList() ??
          [],
      filmTaste: (json['filmTaste'] as List<dynamic>?)
              ?.map((e) => e as int)
              .toList() ??
          [],
      religion: json['religion'] as int?,
      horoscope: json['horoscope'] as int?,
      languages: (json['languages'] as List<dynamic>?)
              ?.map((e) => e as int)
              .toList() ??
          [],
      interests: (json['interests'] as List<dynamic>?)
              ?.map((e) => e as int)
              .toList() ??
          [],
      shape: json['shape'] as int?,
      facialHair: json['facialHair'] as int?,
      minAge: json['minAge'] as int?,
      maxAge: json['maxAge'] as int?,
      chemistry: json['chemistry'] as int?,
      theirOne: json['theirOne'] == null
          ? null
          : YourOneDTO.fromJson(json['theirOne'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$CreatePersonDTOToJson(CreatePersonDTO instance) =>
    <String, dynamic>{
      'username': instance.username,
      'name': instance.name,
      'email': instance.email,
      'birthDate': _dateToJson(instance.birthDate),
      'height': instance.height,
      'age': instance.age,
      'gender': instance.gender,
      'tattoo': instance.tattoo,
      'eyeColour': instance.eyeColour,
      'hairColour': instance.hairColour,
      'piercing': instance.piercing,
      'glasses': instance.glasses,
      'sportiness': instance.sportiness,
      'breastSize': instance.breastSize,
      'bio': instance.bio,
      'city': instance.city,
      'jobType': instance.jobType,
      'eduLevel': instance.eduLevel,
      'cigarettes': instance.cigarettes,
      'alcohol': instance.alcohol,
      'childrenNumber': instance.childrenNumber,
      'maritalStatus': instance.maritalStatus,
      'musicalTaste': instance.musicalTaste,
      'filmTaste': instance.filmTaste,
      'religion': instance.religion,
      'horoscope': instance.horoscope,
      'languages': instance.languages,
      'interests': instance.interests,
      'shape': instance.shape,
      'facialHair': instance.facialHair,
      'minAge': instance.minAge,
      'maxAge': instance.maxAge,
      'chemistry': instance.chemistry,
      'theirOne': instance.theirOne?.toJson(),
    };

File _$FileFromJson(Map<String, dynamic> json) => File(
      absolute: json['absolute'] as bool?,
      absoluteFile: json['absoluteFile'] == null
          ? null
          : File.fromJson(json['absoluteFile'] as Map<String, dynamic>),
      absolutePath: json['absolutePath'] as String?,
      canonicalFile: json['canonicalFile'] == null
          ? null
          : File.fromJson(json['canonicalFile'] as Map<String, dynamic>),
      canonicalPath: json['canonicalPath'] as String?,
      directory: json['directory'] as bool?,
      file: json['file'] as bool?,
      freeSpace: json['freeSpace'] as num?,
      hidden: json['hidden'] as bool?,
      name: json['name'] as String?,
      parent: json['parent'] as String?,
      parentFile: json['parentFile'] == null
          ? null
          : File.fromJson(json['parentFile'] as Map<String, dynamic>),
      path: json['path'] as String?,
      totalSpace: json['totalSpace'] as num?,
      usableSpace: json['usableSpace'] as num?,
    );

Map<String, dynamic> _$FileToJson(File instance) => <String, dynamic>{
      'absolute': instance.absolute,
      'absoluteFile': instance.absoluteFile?.toJson(),
      'absolutePath': instance.absolutePath,
      'canonicalFile': instance.canonicalFile?.toJson(),
      'canonicalPath': instance.canonicalPath,
      'directory': instance.directory,
      'file': instance.file,
      'freeSpace': instance.freeSpace,
      'hidden': instance.hidden,
      'name': instance.name,
      'parent': instance.parent,
      'parentFile': instance.parentFile?.toJson(),
      'path': instance.path,
      'totalSpace': instance.totalSpace,
      'usableSpace': instance.usableSpace,
    };

InputStream _$InputStreamFromJson(Map<String, dynamic> json) => InputStream();

Map<String, dynamic> _$InputStreamToJson(InputStream instance) =>
    <String, dynamic>{};

ItsAMatch _$ItsAMatchFromJson(Map<String, dynamic> json) => ItsAMatch(
      me: PersonAllDTO.fromJson(json['me'] as Map<String, dynamic>),
      partner: PersonAllDTO.fromJson(json['partner'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ItsAMatchToJson(ItsAMatch instance) => <String, dynamic>{
      'me': instance.me.toJson(),
      'partner': instance.partner.toJson(),
    };

LoginDTO _$LoginDTOFromJson(Map<String, dynamic> json) => LoginDTO(
      username: json['username'] as String,
      password: json['password'] as String,
    );

Map<String, dynamic> _$LoginDTOToJson(LoginDTO instance) => <String, dynamic>{
      'username': instance.username,
      'password': instance.password,
    };

Match _$MatchFromJson(Map<String, dynamic> json) => Match(
      commonAttributes: (json['commonAttributes'] as List<dynamic>?)
              ?.map((e) => CommonAttributes.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      pct: json['pct'] as int,
    );

Map<String, dynamic> _$MatchToJson(Match instance) => <String, dynamic>{
      'commonAttributes':
          instance.commonAttributes.map((e) => e.toJson()).toList(),
      'pct': instance.pct,
    };

MessageEntity _$MessageEntityFromJson(Map<String, dynamic> json) =>
    MessageEntity(
      addressee: Person.fromJson(json['addressee'] as Map<String, dynamic>),
      id: json['id'] as num,
      pair: PairEntity.fromJson(json['pair'] as Map<String, dynamic>),
      sender: Person.fromJson(json['sender'] as Map<String, dynamic>),
      sentTime: DateTime.parse(json['sentTime'] as String),
      state: messageEntityStateFromJson(json['state']),
      text: json['text'] as String,
    );

Map<String, dynamic> _$MessageEntityToJson(MessageEntity instance) =>
    <String, dynamic>{
      'addressee': instance.addressee.toJson(),
      'id': instance.id,
      'pair': instance.pair.toJson(),
      'sender': instance.sender.toJson(),
      'sentTime': instance.sentTime.toIso8601String(),
      'state': messageEntityStateToJson(instance.state),
      'text': instance.text,
    };

PairEntity _$PairEntityFromJson(Map<String, dynamic> json) => PairEntity(
      a: Person.fromJson(json['a'] as Map<String, dynamic>),
      b: Person.fromJson(json['b'] as Map<String, dynamic>),
      id: json['id'] as num,
      responseA: json['responseA'] as bool?,
      responseB: json['responseB'] as bool?,
      state: pairEntityStateFromJson(json['state']),
    );

Map<String, dynamic> _$PairEntityToJson(PairEntity instance) =>
    <String, dynamic>{
      'a': instance.a.toJson(),
      'b': instance.b.toJson(),
      'id': instance.id,
      'responseA': instance.responseA,
      'responseB': instance.responseB,
      'state': pairEntityStateToJson(instance.state),
    };

Person _$PersonFromJson(Map<String, dynamic> json) => Person(
      filmTaste: json['_filmTaste'] as String?,
      interests: json['_interests'] as String?,
      languages: json['_languages'] as String?,
      musicalTaste: json['_musicalTaste'] as String?,
      age: json['age'] as int,
      alcohol: json['alcohol'] as int?,
      bio: json['bio'] as String?,
      birthDate: json['birthDate'] == null
          ? null
          : DateTime.parse(json['birthDate'] as String),
      breastSize: json['breastSize'] as int?,
      chemistry: json['chemistry'] as int?,
      childrenNumber: json['childrenNumber'] as int?,
      cigarettes: json['cigarettes'] as int?,
      city: json['city'] as String?,
      eduLevel: json['eduLevel'] as int?,
      email: json['email'] as String,
      eyeColour: json['eyeColour'] as int?,
      facialHair: json['facialHair'] as int?,
      $filmTaste: (json['filmTaste'] as List<dynamic>?)
              ?.map((e) => e as int)
              .toList() ??
          [],
      gender: json['gender'] as int?,
      glasses: json['glasses'] as int?,
      hairColour: json['hairColour'] as int?,
      height: json['height'] as int?,
      horoscope: json['horoscope'] as int?,
      id: json['id'] as num,
      $interests: (json['interests'] as List<dynamic>?)
              ?.map((e) => e as int)
              .toList() ??
          [],
      jobType: json['jobType'] as int?,
      $languages: (json['languages'] as List<dynamic>?)
              ?.map((e) => e as int)
              .toList() ??
          [],
      maritalStatus: json['maritalStatus'] as int?,
      maxAge: json['maxAge'] as int?,
      minAge: json['minAge'] as int?,
      $musicalTaste: (json['musicalTaste'] as List<dynamic>?)
              ?.map((e) => e as int)
              .toList() ??
          [],
      name: json['name'] as String,
      photos: (json['photos'] as List<dynamic>?)
              ?.map((e) => Photo.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      piercing: json['piercing'] as int?,
      religion: json['religion'] as int?,
      shape: json['shape'] as int?,
      sportiness: json['sportiness'] as int?,
      tattoo: json['tattoo'] as int?,
      theirOne: json['theirOne'] == null
          ? null
          : YourOneEntity.fromJson(json['theirOne'] as Map<String, dynamic>),
      username: json['username'] as String?,
    );

Map<String, dynamic> _$PersonToJson(Person instance) => <String, dynamic>{
      '_filmTaste': instance.filmTaste,
      '_interests': instance.interests,
      '_languages': instance.languages,
      '_musicalTaste': instance.musicalTaste,
      'age': instance.age,
      'alcohol': instance.alcohol,
      'bio': instance.bio,
      'birthDate': _dateToJson(instance.birthDate),
      'breastSize': instance.breastSize,
      'chemistry': instance.chemistry,
      'childrenNumber': instance.childrenNumber,
      'cigarettes': instance.cigarettes,
      'city': instance.city,
      'eduLevel': instance.eduLevel,
      'email': instance.email,
      'eyeColour': instance.eyeColour,
      'facialHair': instance.facialHair,
      'filmTaste': instance.$filmTaste,
      'gender': instance.gender,
      'glasses': instance.glasses,
      'hairColour': instance.hairColour,
      'height': instance.height,
      'horoscope': instance.horoscope,
      'id': instance.id,
      'interests': instance.$interests,
      'jobType': instance.jobType,
      'languages': instance.$languages,
      'maritalStatus': instance.maritalStatus,
      'maxAge': instance.maxAge,
      'minAge': instance.minAge,
      'musicalTaste': instance.$musicalTaste,
      'name': instance.name,
      'photos': instance.photos.map((e) => e.toJson()).toList(),
      'piercing': instance.piercing,
      'religion': instance.religion,
      'shape': instance.shape,
      'sportiness': instance.sportiness,
      'tattoo': instance.tattoo,
      'theirOne': instance.theirOne?.toJson(),
      'username': instance.username,
    };

PersonAllDTO _$PersonAllDTOFromJson(Map<String, dynamic> json) => PersonAllDTO(
      age: json['age'] as int?,
      alcohol: json['alcohol'] as int?,
      bio: json['bio'] as String?,
      birthDate: DateTime.parse(json['birthDate'] as String),
      breastSize: json['breastSize'] as int?,
      chemistry: json['chemistry'] as int?,
      childrenNumber: json['childrenNumber'] as int?,
      cigarettes: json['cigarettes'] as int?,
      city: json['city'] as String?,
      eduLevel: json['eduLevel'] as int?,
      email: json['email'] as String,
      eyeColour: json['eyeColour'] as int?,
      facialHair: json['facialHair'] as int?,
      filmTaste: (json['filmTaste'] as List<dynamic>?)
              ?.map((e) => e as int)
              .toList() ??
          [],
      gender: json['gender'] as int?,
      glasses: json['glasses'] as int?,
      hairColour: json['hairColour'] as int?,
      height: json['height'] as int?,
      horoscope: json['horoscope'] as int?,
      id: json['id'] as num,
      interests: (json['interests'] as List<dynamic>?)
              ?.map((e) => e as int)
              .toList() ??
          [],
      jobType: json['jobType'] as int?,
      languages: (json['languages'] as List<dynamic>?)
              ?.map((e) => e as int)
              .toList() ??
          [],
      maritalStatus: json['maritalStatus'] as int?,
      match: json['match'] == null
          ? null
          : Match.fromJson(json['match'] as Map<String, dynamic>),
      maxAge: json['maxAge'] as int?,
      minAge: json['minAge'] as int?,
      musicalTaste: (json['musicalTaste'] as List<dynamic>?)
              ?.map((e) => e as int)
              .toList() ??
          [],
      name: json['name'] as String,
      photos: (json['photos'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          [],
      piercing: json['piercing'] as int?,
      religion: json['religion'] as int?,
      shape: json['shape'] as int?,
      sportiness: json['sportiness'] as int?,
      tattoo: json['tattoo'] as int?,
      theirOne: json['theirOne'] == null
          ? null
          : YourOneDTO.fromJson(json['theirOne'] as Map<String, dynamic>),
      username: json['username'] as String?,
    );

Map<String, dynamic> _$PersonAllDTOToJson(PersonAllDTO instance) =>
    <String, dynamic>{
      'age': instance.age,
      'alcohol': instance.alcohol,
      'bio': instance.bio,
      'birthDate': _dateToJson(instance.birthDate),
      'breastSize': instance.breastSize,
      'chemistry': instance.chemistry,
      'childrenNumber': instance.childrenNumber,
      'cigarettes': instance.cigarettes,
      'city': instance.city,
      'eduLevel': instance.eduLevel,
      'email': instance.email,
      'eyeColour': instance.eyeColour,
      'facialHair': instance.facialHair,
      'filmTaste': instance.filmTaste,
      'gender': instance.gender,
      'glasses': instance.glasses,
      'hairColour': instance.hairColour,
      'height': instance.height,
      'horoscope': instance.horoscope,
      'id': instance.id,
      'interests': instance.interests,
      'jobType': instance.jobType,
      'languages': instance.languages,
      'maritalStatus': instance.maritalStatus,
      'match': instance.match?.toJson(),
      'maxAge': instance.maxAge,
      'minAge': instance.minAge,
      'musicalTaste': instance.musicalTaste,
      'name': instance.name,
      'photos': instance.photos,
      'piercing': instance.piercing,
      'religion': instance.religion,
      'shape': instance.shape,
      'sportiness': instance.sportiness,
      'tattoo': instance.tattoo,
      'theirOne': instance.theirOne?.toJson(),
      'username': instance.username,
    };

Photo _$PhotoFromJson(Map<String, dynamic> json) => Photo(
      id: json['id'] as num?,
      name: json['name'] as String,
    );

Map<String, dynamic> _$PhotoToJson(Photo instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
    };

RecentChatDTO _$RecentChatDTOFromJson(Map<String, dynamic> json) =>
    RecentChatDTO(
      lastMessage: json['lastMessage'] == null
          ? null
          : ChatNotification.fromJson(
              json['lastMessage'] as Map<String, dynamic>),
      newMessagesCount: json['newMessagesCount'] as int,
      partner: json['partner'] == null
          ? null
          : PersonAllDTO.fromJson(json['partner'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$RecentChatDTOToJson(RecentChatDTO instance) =>
    <String, dynamic>{
      'lastMessage': instance.lastMessage?.toJson(),
      'newMessagesCount': instance.newMessagesCount,
      'partner': instance.partner?.toJson(),
    };

RegistrationDTO _$RegistrationDTOFromJson(Map<String, dynamic> json) =>
    RegistrationDTO(
      username: json['username'] as String,
      password: json['password'] as String,
      name: json['name'] as String,
      email: json['email'] as String,
      birthDate: DateTime.parse(json['birthDate'] as String),
      height: json['height'] as int?,
      gender: json['gender'] as int?,
      tattoo: json['tattoo'] as int?,
      eyeColour: json['eyeColour'] as int?,
      hairColour: json['hairColour'] as int?,
      piercing: json['piercing'] as int?,
      glasses: json['glasses'] as int?,
      sportiness: json['sportiness'] as int?,
      breastSize: json['breastSize'] as int?,
      bio: json['bio'] as String?,
      city: json['city'] as String?,
      jobType: json['jobType'] as int?,
      eduLevel: json['eduLevel'] as int?,
      cigarettes: json['cigarettes'] as int?,
      alcohol: json['alcohol'] as int?,
      childrenNumber: json['childrenNumber'] as int?,
      maritalStatus: json['maritalStatus'] as int?,
      musicalTaste: (json['musicalTaste'] as List<dynamic>?)
              ?.map((e) => e as int)
              .toList() ??
          [],
      filmTaste: (json['filmTaste'] as List<dynamic>?)
              ?.map((e) => e as int)
              .toList() ??
          [],
      religion: json['religion'] as int?,
      horoscope: json['horoscope'] as int?,
      languages: (json['languages'] as List<dynamic>?)
              ?.map((e) => e as int)
              .toList() ??
          [],
      interests: (json['interests'] as List<dynamic>?)
              ?.map((e) => e as int)
              .toList() ??
          [],
      shape: json['shape'] as int?,
      facialHair: json['facialHair'] as int?,
      minAge: json['minAge'] as int?,
      maxAge: json['maxAge'] as int?,
      chemistry: json['chemistry'] as int?,
      theirOne: json['theirOne'] == null
          ? null
          : YourOneDTO.fromJson(json['theirOne'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$RegistrationDTOToJson(RegistrationDTO instance) =>
    <String, dynamic>{
      'username': instance.username,
      'password': instance.password,
      'name': instance.name,
      'email': instance.email,
      'birthDate': _dateToJson(instance.birthDate),
      'height': instance.height,
      'gender': instance.gender,
      'tattoo': instance.tattoo,
      'eyeColour': instance.eyeColour,
      'hairColour': instance.hairColour,
      'piercing': instance.piercing,
      'glasses': instance.glasses,
      'sportiness': instance.sportiness,
      'breastSize': instance.breastSize,
      'bio': instance.bio,
      'city': instance.city,
      'jobType': instance.jobType,
      'eduLevel': instance.eduLevel,
      'cigarettes': instance.cigarettes,
      'alcohol': instance.alcohol,
      'childrenNumber': instance.childrenNumber,
      'maritalStatus': instance.maritalStatus,
      'musicalTaste': instance.musicalTaste,
      'filmTaste': instance.filmTaste,
      'religion': instance.religion,
      'horoscope': instance.horoscope,
      'languages': instance.languages,
      'interests': instance.interests,
      'shape': instance.shape,
      'facialHair': instance.facialHair,
      'minAge': instance.minAge,
      'maxAge': instance.maxAge,
      'chemistry': instance.chemistry,
      'theirOne': instance.theirOne?.toJson(),
    };

Resource _$ResourceFromJson(Map<String, dynamic> json) => Resource(
      description: json['description'] as String?,
      file: json['file'] == null
          ? null
          : File.fromJson(json['file'] as Map<String, dynamic>),
      filename: json['filename'] as String?,
      inputStream: json['inputStream'] == null
          ? null
          : InputStream.fromJson(json['inputStream'] as Map<String, dynamic>),
      open: json['open'] as bool?,
      readable: json['readable'] as bool?,
      uri: json['uri'] == null
          ? null
          : Uri.fromJson(json['uri'] as Map<String, dynamic>),
      url: json['url'] == null
          ? null
          : Url.fromJson(json['url'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ResourceToJson(Resource instance) => <String, dynamic>{
      'description': instance.description,
      'file': instance.file?.toJson(),
      'filename': instance.filename,
      'inputStream': instance.inputStream?.toJson(),
      'open': instance.open,
      'readable': instance.readable,
      'uri': instance.uri?.toJson(),
      'url': instance.url?.toJson(),
    };

Tokens _$TokensFromJson(Map<String, dynamic> json) => Tokens(
      accessToken: json['accessToken'] as String,
      refreshToken: json['refreshToken'] as String,
      userId: json['userId'] as num,
    );

Map<String, dynamic> _$TokensToJson(Tokens instance) => <String, dynamic>{
      'accessToken': instance.accessToken,
      'refreshToken': instance.refreshToken,
      'userId': instance.userId,
    };

Uri _$UriFromJson(Map<String, dynamic> json) => Uri(
      absolute: json['absolute'] as bool?,
      authority: json['authority'] as String?,
      fragment: json['fragment'] as String?,
      host: json['host'] as String?,
      opaque: json['opaque'] as bool?,
      path: json['path'] as String?,
      port: json['port'] as int?,
      query: json['query'] as String?,
      rawAuthority: json['rawAuthority'] as String?,
      rawFragment: json['rawFragment'] as String?,
      rawPath: json['rawPath'] as String?,
      rawQuery: json['rawQuery'] as String?,
      rawSchemeSpecificPart: json['rawSchemeSpecificPart'] as String?,
      rawUserInfo: json['rawUserInfo'] as String?,
      scheme: json['scheme'] as String?,
      schemeSpecificPart: json['schemeSpecificPart'] as String?,
      userInfo: json['userInfo'] as String?,
    );

Map<String, dynamic> _$UriToJson(Uri instance) => <String, dynamic>{
      'absolute': instance.absolute,
      'authority': instance.authority,
      'fragment': instance.fragment,
      'host': instance.host,
      'opaque': instance.opaque,
      'path': instance.path,
      'port': instance.port,
      'query': instance.query,
      'rawAuthority': instance.rawAuthority,
      'rawFragment': instance.rawFragment,
      'rawPath': instance.rawPath,
      'rawQuery': instance.rawQuery,
      'rawSchemeSpecificPart': instance.rawSchemeSpecificPart,
      'rawUserInfo': instance.rawUserInfo,
      'scheme': instance.scheme,
      'schemeSpecificPart': instance.schemeSpecificPart,
      'userInfo': instance.userInfo,
    };

Url _$UrlFromJson(Map<String, dynamic> json) => Url(
      authority: json['authority'] as String?,
      content: json['content'],
      defaultPort: json['defaultPort'] as int?,
      file: json['file'] as String?,
      host: json['host'] as String?,
      path: json['path'] as String?,
      port: json['port'] as int?,
      protocol: json['protocol'] as String?,
      query: json['query'] as String?,
      ref: json['ref'] as String?,
      userInfo: json['userInfo'] as String?,
    );

Map<String, dynamic> _$UrlToJson(Url instance) => <String, dynamic>{
      'authority': instance.authority,
      'content': instance.content,
      'defaultPort': instance.defaultPort,
      'file': instance.file,
      'host': instance.host,
      'path': instance.path,
      'port': instance.port,
      'protocol': instance.protocol,
      'query': instance.query,
      'ref': instance.ref,
      'userInfo': instance.userInfo,
    };

YourOneDTO _$YourOneDTOFromJson(Map<String, dynamic> json) => YourOneDTO(
      alcohol: json['alcohol'] as int?,
      bio: json['bio'] as String?,
      breastSize: json['breastSize'] as int?,
      childrenNumber: json['childrenNumber'] as int?,
      cigarettes: json['cigarettes'] as int?,
      city: json['city'] as String?,
      eduLevel: json['eduLevel'] as int?,
      eyeColour: json['eyeColour'] as int?,
      facialHair: json['facialHair'] as int?,
      filmTaste: (json['filmTaste'] as List<dynamic>?)
              ?.map((e) => e as int)
              .toList() ??
          [],
      gender: json['gender'] as int?,
      glasses: json['glasses'] as int?,
      hairColour: json['hairColour'] as int?,
      height: json['height'] as int?,
      horoscope: json['horoscope'] as int?,
      interests: (json['interests'] as List<dynamic>?)
              ?.map((e) => e as int)
              .toList() ??
          [],
      jobType: json['jobType'] as int?,
      languages: (json['languages'] as List<dynamic>?)
              ?.map((e) => e as int)
              .toList() ??
          [],
      maritalStatus: json['maritalStatus'] as int?,
      musicalTaste: (json['musicalTaste'] as List<dynamic>?)
              ?.map((e) => e as int)
              .toList() ??
          [],
      piercing: json['piercing'] as int?,
      religion: json['religion'] as int?,
      shape: json['shape'] as int?,
      sportiness: json['sportiness'] as int?,
      tattoo: json['tattoo'] as int?,
    );

Map<String, dynamic> _$YourOneDTOToJson(YourOneDTO instance) =>
    <String, dynamic>{
      'alcohol': instance.alcohol,
      'bio': instance.bio,
      'breastSize': instance.breastSize,
      'childrenNumber': instance.childrenNumber,
      'cigarettes': instance.cigarettes,
      'city': instance.city,
      'eduLevel': instance.eduLevel,
      'eyeColour': instance.eyeColour,
      'facialHair': instance.facialHair,
      'filmTaste': instance.filmTaste,
      'gender': instance.gender,
      'glasses': instance.glasses,
      'hairColour': instance.hairColour,
      'height': instance.height,
      'horoscope': instance.horoscope,
      'interests': instance.interests,
      'jobType': instance.jobType,
      'languages': instance.languages,
      'maritalStatus': instance.maritalStatus,
      'musicalTaste': instance.musicalTaste,
      'piercing': instance.piercing,
      'religion': instance.religion,
      'shape': instance.shape,
      'sportiness': instance.sportiness,
      'tattoo': instance.tattoo,
    };

YourOneEntity _$YourOneEntityFromJson(Map<String, dynamic> json) =>
    YourOneEntity(
      filmTaste: json['_filmTaste'] as String?,
      interests: json['_interests'] as String?,
      languages: json['_languages'] as String?,
      musicalTaste: json['_musicalTaste'] as String?,
      alcohol: json['alcohol'] as int?,
      breastSize: json['breastSize'] as int?,
      childrenNumber: json['childrenNumber'] as int?,
      cigarettes: json['cigarettes'] as int?,
      eduLevel: json['eduLevel'] as int?,
      eyeColour: json['eyeColour'] as int?,
      facialHair: json['facialHair'] as int?,
      $filmTaste: (json['filmTaste'] as List<dynamic>?)
              ?.map((e) => e as int)
              .toList() ??
          [],
      gender: json['gender'] as int?,
      glasses: json['glasses'] as int?,
      hairColour: json['hairColour'] as int?,
      height: json['height'] as int?,
      horoscope: json['horoscope'] as int?,
      id: json['id'] as num,
      $interests: (json['interests'] as List<dynamic>?)
              ?.map((e) => e as int)
              .toList() ??
          [],
      jobType: json['jobType'] as int?,
      $languages: (json['languages'] as List<dynamic>?)
              ?.map((e) => e as int)
              .toList() ??
          [],
      maritalStatus: json['maritalStatus'] as int?,
      $musicalTaste: (json['musicalTaste'] as List<dynamic>?)
              ?.map((e) => e as int)
              .toList() ??
          [],
      piercing: json['piercing'] as int?,
      religion: json['religion'] as int?,
      shape: json['shape'] as int?,
      sportiness: json['sportiness'] as int?,
      tattoo: json['tattoo'] as int?,
    );

Map<String, dynamic> _$YourOneEntityToJson(YourOneEntity instance) =>
    <String, dynamic>{
      '_filmTaste': instance.filmTaste,
      '_interests': instance.interests,
      '_languages': instance.languages,
      '_musicalTaste': instance.musicalTaste,
      'alcohol': instance.alcohol,
      'breastSize': instance.breastSize,
      'childrenNumber': instance.childrenNumber,
      'cigarettes': instance.cigarettes,
      'eduLevel': instance.eduLevel,
      'eyeColour': instance.eyeColour,
      'facialHair': instance.facialHair,
      'filmTaste': instance.$filmTaste,
      'gender': instance.gender,
      'glasses': instance.glasses,
      'hairColour': instance.hairColour,
      'height': instance.height,
      'horoscope': instance.horoscope,
      'id': instance.id,
      'interests': instance.$interests,
      'jobType': instance.jobType,
      'languages': instance.$languages,
      'maritalStatus': instance.maritalStatus,
      'musicalTaste': instance.$musicalTaste,
      'piercing': instance.piercing,
      'religion': instance.religion,
      'shape': instance.shape,
      'sportiness': instance.sportiness,
      'tattoo': instance.tattoo,
    };
