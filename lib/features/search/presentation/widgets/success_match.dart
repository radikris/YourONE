import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:yourone/common/app_primary_button.dart';
import 'package:yourone/entities/its_a_match.dart';
import 'package:yourone/gen/assets.gen.dart';
import 'package:yourone/theme/app_dimen.dart';

class SuccessMatch {
  static void showCustomDialog(BuildContext context, ItsAMatch match) {
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
                  height: MediaQuery.of(context).size.height * 0.65,
                  width: double.infinity,
                  child: Stack(
                    fit: StackFit.expand,
                    children: [
                      Positioned(
                        top: 75,
                        right: -5,
                        child: DecoratedBox(
                          decoration: BoxDecoration(
                            boxShadow: [
                              //box-shadow: 0px 25px 25px 0px #00000026;

                              BoxShadow(
                                color: Color.fromARGB(25, 0, 0, 0),
                                spreadRadius: 0,
                                blurRadius: 25.0,
                                offset: Offset(0, 25),
                              ),
                            ],
                          ),
                          child: Align(
                            alignment: Alignment.centerRight,
                            child: Transform.rotate(
                              angle: 5,
                              child: Container(
                                width: 220,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(8)),
                                child: Stack(
                                  clipBehavior: Clip.none,
                                  children: [
                                    ClipRRect(
                                      borderRadius: BorderRadius.circular(20),
                                      child: Image.network(
                                          'https://i.insider.com/5c48ef432bdd7f659443dc94?width=600&format=jpeg'),
                                    ),
                                    Positioned(
                                        bottom: 0,
                                        right: 0,
                                        child: RotatedBox(
                                          quarterTurns: 1,
                                          child: Lottie.asset(
                                              Assets.animations.heart,
                                              width: 60),
                                        ))
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        top: 225,
                        left: -5,
                        child: DecoratedBox(
                          decoration: BoxDecoration(
                            boxShadow: [
                              //box-shadow: 0px 25px 25px 0px #00000026;

                              BoxShadow(
                                color: Color.fromARGB(25, 0, 0, 0),
                                spreadRadius: 0,
                                blurRadius: 25.0,
                                offset: Offset(0, 25),
                              ),
                            ],
                          ),
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: Transform.rotate(
                              angle: -5,
                              child: Container(
                                width: 220,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(8)),
                                child: Stack(
                                  clipBehavior: Clip.none,
                                  children: [
                                    ClipRRect(
                                      borderRadius: BorderRadius.circular(20),
                                      child: Image.network(
                                          'https://i.insider.com/57db03588a4565a36039483b?width=750&format=jpeg'),
                                    ),
                                    Positioned(
                                        bottom: 0,
                                        right: 0,
                                        child: RotatedBox(
                                          quarterTurns: -1,
                                          child: Lottie.asset(
                                              Assets.animations.heart,
                                              width: 60),
                                        ))
                                  ],
                                ),
                              ),
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
