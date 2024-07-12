import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pro_book/Features/Home/presentation/views/home_view.dart';
import 'package:pro_book/Features/splash/presentations/views/widget/sliding_animation.dart';
import 'package:pro_book/constants.dart';
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
    Future.delayed(const Duration(seconds: 3), () {
     Get.to(() => const HomeView(),transition: Transition.fadeIn,duration: kPrimaryDuration );
    });
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
            child: Image.asset(AssetsData.logoSplash)),
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

  void initSlidingAnimationImage() {
    slidingAnimationImage = Tween<Offset>(
      begin: const Offset(0, -10),
      end: Offset.zero,
    ).animate(animationController);
  }
}
