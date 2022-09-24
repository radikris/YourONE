import 'package:flutter/material.dart';
import 'package:yourone/features/search/presentation/components/bottom_buttons_row.dart';

class ProfileCard extends StatelessWidget {
  const ProfileCard({
    required this.name,
    required this.image,
    super.key,
  });

  final String name;
  final String image;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return ClipRRect(
      child: Stack(
        children: [
          Positioned.fill(
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(14),
                  boxShadow: [
                    BoxShadow(
                      offset: const Offset(0, 2),
                      blurRadius: 26,
                      color: Colors.black.withOpacity(0.08),
                    ),
                  ]),
              child: Image.network(image, fit: BoxFit.fill),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: 200,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.vertical(
                  bottom: Radius.circular(14),
                ),
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
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                  style: theme.textTheme.headline6!.copyWith(
                    color: Colors.white,
                  ),
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
