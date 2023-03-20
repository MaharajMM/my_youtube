import 'package:my_youtube/src/common_widgets/fade_in_animation/fade_in_animation_model.dart';

import '../../constants/imports.dart';

class KFadeInAnimation extends StatelessWidget {
  KFadeInAnimation({
    super.key,
    required this.durationInMS,
    this.animatePosition,
    required this.child,
  });

  final splashController = Get.put(FadeInAnimationController());
  final int durationInMS;
  final KAnimatePosition? animatePosition;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => AnimatedPositioned(
        duration: Duration(milliseconds: durationInMS),
        top: splashController.animate.value
            ? animatePosition!.topAfter
            : animatePosition!.topBefore,
        left: splashController.animate.value
            ? animatePosition!.leftAfter
            : animatePosition!.leftBefore,
        right: splashController.animate.value
            ? animatePosition!.rightAfter
            : animatePosition!.rightBefore,
        bottom: splashController.animate.value
            ? animatePosition!.bottomAfter
            : animatePosition!.bottomBefore,
        child: AnimatedOpacity(
          duration: Duration(milliseconds: durationInMS),
          opacity: splashController.animate.value ? 1 : 0,
          child: child,
          // child: const Text(
          //   kAppTagLine,
          //   style: TextStyle(
          //     fontSize: 30,
          //     fontWeight: FontWeight.bold,
          //     //color: kDarkColor,
          //   ),
          // ),
        ),
      ),
    );
  }
}
