import 'package:flutter/material.dart';
import 'package:pro_book/Features/splash/presentations/views/widget/sliding_animation.dart';
import 'package:pro_book/core/utils/assets.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<Offset> slidingAnimation;
  late Animation<Offset> slidingAnimationImage;
  @override
  void initState() {
    super.initState();
    initSlidingAnimationText();
    initSlidingAnimationImage();

    animationController.forward();
  }

  @override
  void dispose() {
    super.dispose();
    animationController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        SlidingAnimation(
            slidingAnimation: slidingAnimationImage,
            child: Image.asset(AssetsData.logo)),
        const SizedBox(
          height: 4,
        ),
        SlidingAnimation(
          slidingAnimation: slidingAnimation,
          child: const Text(
            'Read Free Books',
            textAlign: TextAlign.center,
          ),
        ),
      ],
    );
  }

  void initSlidingAnimationImage() {
    slidingAnimationImage = Tween<Offset>(
      begin: const Offset(0, -10),
      end: Offset.zero,
    ).animate(animationController);
  }

  void initSlidingAnimationText() {
    animationController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 2),
    );
    slidingAnimation = Tween<Offset>(
      begin: const Offset(0, 10),
      end: Offset.zero,
    ).animate(animationController);
  }
}
