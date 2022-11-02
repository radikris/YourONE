import 'package:auto_route/auto_route.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:yourone/auto_router.gr.dart';
import 'package:yourone/entities/user_profile.dart';
import 'package:yourone/theme/app_color.dart';
import 'package:yourone/theme/app_dimen.dart';
import 'package:yourone/theme/text_styles.dart';
import 'package:yourone/util/helper.dart';
import 'package:yourone/util/util.dart';

const _images = [
  "https://i.insider.com/5c48ef432bdd7f659443dc94?width=600&format=jpeg",
  "https://i.insider.com/57db03588a4565a36039483b?width=750&format=jpeg",
  "https://i.insider.com/593aed9cc4adee3a008b4ce1?width=750&format=jpeg",
  "https://i.insider.com/593aed9cc4adee3a008b4ce1?width=750&format=jpeg",
  "https://i.insider.com/593aed9cc4adee3a008b4ce1?width=750&format=jpeg",
  "https://i.insider.com/593aed9cc4adee3a008b4ce1?width=750&format=jpeg",
  "https://i.insider.com/593aed9cc4adee3a008b4ce1?width=750&format=jpeg",
  "https://i.pinimg.com/236x/3e/c3/4d/3ec34dfd7694806445b1d0292f9c059a--russian-womens-russian-girls.jpg"
];

class AllContacts extends StatelessWidget {
  const AllContacts({Key? key, required this.allMatches}) : super(key: key);

  final List<UserProfile> allMatches;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 160,
      padding: AppDimen.horizontal24Vertical16.copyWith(right: 0),
      width: double.infinity,
      decoration: BoxDecoration(
        color: AppColor.primary10,
        borderRadius: BorderRadius.vertical(
          bottom: Radius.circular(16),
          top: Radius.circular(16),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            'All matches',
            style: TextStyles.bold18,
          ),
          SizedBox(
            height: 8,
          ),
          Expanded(
            child: ListView.separated(
              physics: BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              itemCount: allMatches.length,
              separatorBuilder: (BuildContext context, int index) {
                return SizedBox(
                  width: 8,
                );
              },
              itemBuilder: (BuildContext context, int index) {
                final partner = allMatches[index];
                return GestureDetector(
                  onTap: () =>
                      context.pushRoute(ChatDetailRoute(partner: partner)),
                  child: SizedBox(
                    width: 80,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        CircleAvatar(
                          radius: 31,
                          backgroundColor: AppColor.primary,
                          child: CircleAvatar(
                            radius: 30.0,
                            child: ClipOval(
                                child: Image.network(
                              errorBuilder: imageNetworkError,
                              width: 60,
                              height: 60,
                              partner.image ?? '',
                              fit: BoxFit.fill,
                            )),
                            backgroundColor: Colors.transparent,
                          ),
                        ),
                        Text(
                          partner.name ?? '',
                          style: TextStyles.normal14,
                          overflow: TextOverflow.fade,
                          softWrap: false,
                        )
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
