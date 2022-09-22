import 'package:flutter/material.dart';
import 'package:swipable_stack/swipable_stack.dart';
import 'package:yourone/theme/app_color.dart';

class BottomButtonsRow extends StatelessWidget {
  const BottomButtonsRow({
    required this.onRewindTap,
    required this.onSwipe,
    required this.canRewind,
    super.key,
  });

  final bool canRewind;
  final VoidCallback onRewindTap;
  final ValueChanged<SwipeDirection> onSwipe;

  static const double height = 100;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8),
        child: SizedBox(
          height: height,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              _BottomButton(
                color: canRewind ? Colors.amberAccent : Colors.grey,
                onPressed: canRewind ? onRewindTap : null,
                child: const Icon(Icons.refresh),
              ),
              _BottomButton(
                color: AppColor.dislike,
                child: const Icon(Icons.arrow_back),
                onPressed: () {
                  onSwipe(SwipeDirection.left);
                },
              ),
              _BottomButton(
                color: AppColor.like,
                onPressed: () {
                  onSwipe(SwipeDirection.right);
                },
                child: const Icon(Icons.arrow_forward),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _BottomButton extends StatelessWidget {
  const _BottomButton({
    required this.onPressed,
    required this.child,
    required this.color,
  });

  final VoidCallback? onPressed;
  final Icon child;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 64,
      width: 64,
      child: ElevatedButton(
        style: ButtonStyle(
          shape: MaterialStateProperty.resolveWith(
            (states) => RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(100),
            ),
          ),
          backgroundColor: MaterialStateProperty.resolveWith(
            (states) => color,
          ),
        ),
        onPressed: onPressed,
        child: child,
      ),
    );
  }
}
