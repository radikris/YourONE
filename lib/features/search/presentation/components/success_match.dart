import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:yourone/common/app_primary_button.dart';
import 'package:yourone/gen/assets.gen.dart';
import 'package:yourone/theme/app_dimen.dart';

class SuccessMatch {
  static void showCustomDialog(BuildContext context) {
    showGeneralDialog(
      context: context,
      barrierLabel: "Barrier",
      barrierDismissible: true,
      barrierColor: Colors.black.withOpacity(0.5),
      transitionDuration: Duration(milliseconds: 700),
      pageBuilder: (_, __, ___) {
        return Center(
          child: Container(
            width: double.infinity,
            margin: EdgeInsets.symmetric(horizontal: 20),
            padding: AppDimen.horizontal24Vertical16,
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(40)),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: MediaQuery.of(context).size.height * 0.7,
                  width: double.infinity,
                  child: Stack(
                    fit: StackFit.expand,
                    children: [
                      Positioned(
                        top: 75,
                        right: 0,
                        child: Align(
                          alignment: Alignment.centerRight,
                          child: Transform.rotate(
                            angle: 5,
                            child: Container(
                              width: 220,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8)),
                              child: Image.network(
                                  'https://i.insider.com/5c48ef432bdd7f659443dc94?width=600&format=jpeg'),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        top: 225,
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Transform.rotate(
                            angle: -5,
                            child: Stack(
                              children: [
                                Container(
                                  width: 220,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(8)),
                                  child: Image.network(
                                      'https://i.insider.com/57db03588a4565a36039483b?width=750&format=jpeg'),
                                ),
                                //  Lottie.asset(Assets.animations.heart)
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                AppButton.primary(text: 'Say hello', onTap: () {}),
                SizedBox(
                  height: 8,
                ),
                AppButton.secondary(text: 'Keep swiping', onTap: () {}),
              ],
            ),
          ),
        );
      },
      transitionBuilder: (_, anim, __, child) {
        Tween<Offset> tween;
        if (anim.status == AnimationStatus.reverse) {
          tween = Tween(begin: Offset(0, -1), end: Offset.zero);
        } else {
          tween = Tween(begin: Offset(0, 1), end: Offset.zero);
        }

        return SlideTransition(
          position: tween.animate(anim),
          child: FadeTransition(
            opacity: anim,
            child: child,
          ),
        );
      },
    );
  }
}
