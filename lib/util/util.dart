import 'package:yourone/entities/enum_types/enums.dart';
import 'package:yourone/entities/user_profile.dart';

class Util {
  static Enums enumMapper(String key, int value) =>
      Enums.fromJson({key: value});
}
