import 'package:flutter/material.dart';
import 'package:yourone/features/search/presentation/components/profile_detail_section_attribute.dart';
import 'package:yourone/theme/app_color.dart';
import 'package:yourone/theme/text_styles.dart';

class ProfileDetailSection<T extends Enum> extends StatelessWidget {
  const ProfileDetailSection(
      {Key? key, required this.title, this.subTitle, this.personalAttributes})
      : super(key: key);

  final String title;
  final String? subTitle;
  final Map<T, bool>? personalAttributes;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: TextStyles.bold16,
        ),
        const SizedBox(
          height: 8,
        ),
        if (subTitle != null)
          Text(
            subTitle!,
            style: TextStyles.normal14.copyWith(color: AppColor.black70),
          ),
        const SizedBox(
          height: 8,
        ),
        Wrap(
          spacing: 10,
          runSpacing: 10,
          children: personalAttributes?.entries
                  .map((e) => ProfileDetailSectionAttribute(
                        title: e.key.name,
                        isPropertyMatch: e.value,
                      ))
                  .toList() ??
              [],
        ),
        const SizedBox(
          height: 24,
        ),
      ],
    );
  }
}
