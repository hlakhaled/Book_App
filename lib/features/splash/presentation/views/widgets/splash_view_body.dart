import 'package:book_app/constants.dart';
import 'package:book_app/core/utils/app_router.dart';
import 'package:book_app/core/utils/assets_data.dart';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:go_router/go_router.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody>
    with TickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<Offset> slidingText;

  @override
  void initState() {
    super.initState();
    initAnimation();
    navigateToNextPage();
  }

  void navigateToNextPage() {
    Future.delayed(kduration, () {
      GoRouter.of(context).push(AppRouter.kBookView);
    });
  }

  void initAnimation() {
    animationController =
        AnimationController(vsync: this, duration: const Duration(seconds: 1));
    slidingText = Tween<Offset>(begin: const Offset(0, 4), end: Offset.zero)
        .animate(animationController);

    animationController.forward();
  }

  @override
  void dispose() {
    animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        SvgPicture.asset(
          AssetsData.logo,
          width: 60,
          height: 60,
        ),
        const SizedBox(
          height: 8,
        ),
        AnimatedBuilder(
          animation: slidingText,
          builder: (context, _) {
            return SlideTransition(
              position: slidingText,
              child: const Text(
                "Read Free Books",
                textAlign: TextAlign.center,
              ),
            );
          },
        )
      ],
    );
  }
}
