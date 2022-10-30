import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:yourone/features/search/presentation/widgets/bottom_buttons_row.dart';
import 'package:yourone/features/search/presentation/widgets/matching_rate.dart';
import 'package:yourone/theme/app_color.dart';
import 'package:yourone/util/helper.dart';

class ProfileCard extends StatelessWidget {
  const ProfileCard({
    required this.name,
    required this.image,
    super.key,
    required this.matchPercentage,
  });

  final String name;
  final String image;
  final int matchPercentage;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return ClipRRect(
      child: Stack(
        children: [
          Positioned.fill(
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                  ),
                  boxShadow: [
                    BoxShadow(
                      offset: const Offset(0, 2),
                      blurRadius: 26,
                      color: Colors.black.withOpacity(0.08),
                    ),
                  ]),
              child: Image.network(
                  errorBuilder: imageNetworkError, image, fit: BoxFit.fill),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: ClipRRect(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20),
                topRight: Radius.circular(20),
              ),
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
                child: Container(
                  height: 150,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20),
                      ),
                      color: Colors.grey.shade200.withOpacity(0.5)),
                  child: Container(
                    height: 200,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: <Color>[
                          Colors.black12.withOpacity(0),
                          Colors.black12.withOpacity(.4),
                          Colors.black12.withOpacity(.82),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      name,
                      style: theme.textTheme.headline6!.copyWith(
                        color: Colors.white,
                      ),
                    ),
                    MatchingRate(calculatedMatch: matchPercentage.toDouble()),
                  ],
                ),
                const SizedBox(height: BottomButtonsRow.height)
              ],
            ),
          ),
        ],
      ),
    );
  }
}
