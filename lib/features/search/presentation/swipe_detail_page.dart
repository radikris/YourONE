import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_swiper_null_safety/flutter_swiper_null_safety.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:yourone/common/app_app_bar.dart';
import 'package:yourone/common/app_icon.dart';
import 'package:yourone/features/search/presentation/components/profile_detail_section.dart';
import 'package:yourone/features/search/presentation/components/profile_detail_section_account.dart';
import 'package:yourone/gen/assets.gen.dart';
import 'package:yourone/theme/app_color.dart';
import 'package:yourone/theme/app_dimen.dart';

const _images = [
  "https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885_960_720.jpg",
  "https://cdn.pixabay.com/photo/2016/05/05/02/37/sunset-1373171_960_720.jpg",
  "https://cdn.pixabay.com/photo/2017/02/01/22/02/mountain-landscape-2031539_960_720.jpg",
  "https://cdn.pixabay.com/photo/2014/09/14/18/04/dandelion-445228_960_720.jpg",
];

enum Attribute1 { alma, banan, korte, eper, szilva }

enum Attribute2 {
  citrom,
  narancs,
  gorogdinncse,
  sargadinnye,
  mango,
}

class SwipeDetailPage extends StatelessWidget {
  const SwipeDetailPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final asd = true;

    if (asd)
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
                        name: 'Chickasz neve',
                        age: 23,
                        profession: 'Fényvisszaverő ohhdekiral',
                        location: 'Hungary, Budapest',
                        latlng: LatLng(25, 45),
                        matchRate: 10,
                        allRate: 23,
                      ),
                      ProfileDetailSection(
                          title: 'Bio',
                          subTitle:
                              'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum'),
                      ProfileDetailSection<Attribute1>(
                        title: 'Attribute1',
                        personalAttributes: {
                          Attribute1.alma: true,
                          Attribute1.eper: false,
                          Attribute1.korte: true,
                          Attribute1.szilva: false,
                          Attribute1.banan: false,
                        },
                      ),
                      ProfileDetailSection<Attribute2>(
                        title: 'Attribute2',
                        personalAttributes: {
                          Attribute2.citrom: false,
                          Attribute2.gorogdinncse: false,
                          Attribute2.mango: true,
                          Attribute2.sargadinnye: true,
                        },
                      ),
                    ],
                  ),
                ),
              ),
              /*  SliverFixedExtentList(
                itemExtent: 50.0,
                delegate: SliverChildBuilderDelegate(
                  (BuildContext context, int index) {
                    return Container(
                      alignment: Alignment.center,
                      color: Colors.lightBlue[100 * (index + 1 % 9)],
                      child: Text('List Item $index'),
                    );
                  },
                ),
              ), */
            ],
          ),
        ),
      );
    if (!asd)
      return Scaffold(
        body: CustomScrollView(slivers: <Widget>[
          SliverAppBar(
            expandedHeight: 400.0,
            floating: false,
            pinned: true,
            flexibleSpace: FlexibleSpaceBar(
                centerTitle: true,
                title: Text("Collapsing Toolbar",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16.0,
                    )),
                background: Swiper(
                  itemCount: _images.length,
                  itemBuilder: (BuildContext context, int index) =>
                      Image.network(
                    _images[index],
                    fit: BoxFit.cover,
                  ),
                  autoplay: true,
                )),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
                (context, index) => Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: 75,
                        color: Colors.black12,
                      ),
                    ),
                childCount: 10),
          )
        ]),
      );
  }
}
