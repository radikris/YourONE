import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:yourone/common/app_icon.dart';
import 'package:yourone/extensions/extensions.dart';
import 'package:yourone/features/search/presentation/widgets/matching_rate.dart';
import 'package:yourone/theme/app_color.dart';
import 'package:yourone/theme/text_styles.dart';

class ProfileDetailSectionAccount extends StatelessWidget {
  const ProfileDetailSectionAccount(
      {Key? key,
      required this.name,
      required this.age,
      required this.profession,
      required this.location,
      required this.latlng,
      required this.matchRate,
      required this.allRate})
      : super(key: key);

  final String name;
  final int age;
  final String profession;
  final String location;
  final LatLng latlng;
  final int matchRate;
  final int allRate;

  @override
  Widget build(BuildContext context) {
    double calculatedMatch = matchRate / allRate;
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              name + ", " + age.toString(),
              style: TextStyles.bold24,
            ),
            MatchingRate(calculatedMatch: calculatedMatch)
          ],
        ),
        Text(
          profession,
          style: TextStyles.normal14.copyWith(color: AppColor.black70),
        ),
        SizedBox(
          height: 24,
        ),
        Text(
          'Location',
          style: TextStyles.bold16,
        ),
        const SizedBox(
          height: 8,
        ),
        Text(
          location,
          style: TextStyles.normal14.copyWith(color: AppColor.black70),
        ),
        SizedBox(
          height: 32,
        ),
      ],
    );
  }
}
