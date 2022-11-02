import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_swiper_null_safety/flutter_swiper_null_safety.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:yourone/common/app_app_bar.dart';
import 'package:yourone/common/app_icon.dart';
import 'package:yourone/entities/enum_types/enums.dart';
import 'package:yourone/entities/user_profile.dart';
import 'package:yourone/features/search/presentation/widgets/profile_detail_section.dart';
import 'package:yourone/features/search/presentation/widgets/profile_detail_section_account.dart';
import 'package:yourone/gen/assets.gen.dart';
import 'package:yourone/theme/app_color.dart';
import 'package:yourone/theme/app_dimen.dart';
import 'package:yourone/util/helper.dart';
import 'package:yourone/util/util.dart';
import 'package:yourone/extensions/extensions.dart';

const _images = [
  "https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885_960_720.jpg",
  "https://cdn.pixabay.com/photo/2016/05/05/02/37/sunset-1373171_960_720.jpg",
  "https://cdn.pixabay.com/photo/2017/02/01/22/02/mountain-landscape-2031539_960_720.jpg",
  "https://cdn.pixabay.com/photo/2014/09/14/18/04/dandelion-445228_960_720.jpg",
];

class SwipeDetailPage extends StatelessWidget {
  const SwipeDetailPage({Key? key, required this.profile}) : super(key: key);
  final UserProfile profile;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: CustomScrollView(
          slivers: <Widget>[
            SliverAppBar(
              elevation: 0,
              automaticallyImplyLeading: false,
              bottom: PreferredSize(
                child: Container(),
                preferredSize: Size(0, 64),
              ),
              pinned: true,
              expandedHeight: MediaQuery.of(context).size.height * 0.6,
              flexibleSpace: Stack(
                children: [
                  Positioned(
                      child: Swiper(
                        itemCount: _images.length,
                        itemBuilder: (BuildContext context, int index) =>
                            Image.network(
                          errorBuilder: imageNetworkError,
                          _images[index],
                          fit: BoxFit.cover,
                        ),
                        autoplay: true,
                      ),
                      top: 0,
                      left: 0,
                      right: 0,
                      bottom: 0),
                  Positioned(
                    top: 16,
                    left: 16,
                    child: AppIcon(
                        icon: Assets.icons.back
                            .svg(color: AppColor.primary, width: 12),
                        onTap: () {
                          context.router.navigateBack();
                        }),
                  ),
                  Positioned(
                    child: Container(
                      height: 30,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.vertical(
                          top: Radius.circular(50),
                        ),
                      ),
                      child: Align(
                        alignment: Alignment.topCenter,
                        child: Container(
                          margin: EdgeInsets.only(top: 8),
                          width: 24,
                          height: 2,
                          color: AppColor.black70,
                        ),
                      ),
                    ),
                    bottom: -1,
                    left: 0,
                    right: 0,
                  ),
                ],
              ),
            ),
            SliverToBoxAdapter(
              child: Container(
                padding: AppDimen.horizontal16Vertical8,
                color: Colors.white,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ProfileDetailSectionAccount(
                      name: profile.name ?? '',
                      age: profile.age ?? 0,
                      profession: profile.jobType.toString(),
                      location: profile.address ?? '',
                      latlng: LatLng(25, 45),
                      matchRate: profile.match?.pct ?? 0,
                    ),
                    ProfileDetailSection(
                      title: 'Bio',
                      subTitle: profile.bio ?? '',
                    ),
                    ...List.generate(
                      profile.match!.commonAttributes!.length,
                      (index) {
                        final match = profile.match!.commonAttributes![index];
                        Map<Enum, bool>? matchMap = {};
                        print(match.toJson());
                        match.matches?.forEach((key, value) {
                          matchMap.putIfAbsent(
                              Util.enumMapper(match.name!, int.parse(key))
                                  .getProp(match.name!),
                              () => value);
                        });

                        return ProfileDetailSection<Enum>(
                          title: match.name?.capitalize() ?? '',
                          personalAttributes: matchMap,
                        );
                      },
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
