import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:offertelavoroflutter_app/helpers/styles.dart';
import 'package:offertelavoroflutter_app/modules/common/widgets/multi_animation.dart';
import 'package:offertelavoroflutter_app/modules/common/widgets/progress_dots.dart';
import 'package:offertelavoroflutter_app/modules/onboarding/screens/onboarding_screen/bloc/onboarding_screen_bloc.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => OnboardingScreenBloc(),
      child: const _OnboardingView(),
    );
  }
}

class _OnboardingView extends StatefulWidget {
  const _OnboardingView({Key? key}) : super(key: key);

  @override
  State<_OnboardingView> createState() => _OnboardingViewState();
}

class _OnboardingViewState extends State<_OnboardingView> with TickerProviderStateMixin {
  final List<AnimationController> imagesAnimationController = [];
  final List<AnimationController> contentsAnimationController = [];
  final List<Color> backgroundColors = [
    Styles.primaryDark,
    Styles.accent,
    Styles.primaryLight,
    Styles.accent,
    Styles.primaryDark,
  ];

  @override
  void initState() {
    super.initState();
    for(int i = 0; i < 5 ; i++) {
      imagesAnimationController.add(AnimationController(vsync: this, duration: const Duration(milliseconds: 500)));
      contentsAnimationController.add(AnimationController(vsync: this, duration: const Duration(milliseconds: 400)));
    }

    imagesAnimationController[0].forward();
    contentsAnimationController[0].forward();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.primaryDark,
      body: BlocConsumer<OnboardingScreenBloc, OnboardingScreenState>(
        listener: (context, state) async {
          int activeStepIndex = state.activeStepIndex;

          imagesAnimationController[activeStepIndex - 1].reverse();
          contentsAnimationController[activeStepIndex - 1].reverse();
          await Future.delayed(const Duration(milliseconds: 450), () {});
          imagesAnimationController[activeStepIndex].forward();
          contentsAnimationController[activeStepIndex].reverse();
        },
        builder: (context, state) {
          return AnimatedContainer(
            color: backgroundColors[state.activeStepIndex],
            duration: const Duration(milliseconds: 1000),
            child: SafeArea(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const SizedBox(height: 20),
                    _buildTitle(),
                    const Spacer(),
                    _buildImages(),
                    Expanded(
                      flex: 5,
                      child: _buildContentCard(state.activeStepIndex, context)
                    )
                  ],
                ),
              ),
          );
        },
      ),
    );
  }

  Widget _buildTitle() {
    return Text(AppLocalizations.of(context)!.appName,
      style: Theme.of(context).textTheme.titleMedium?.copyWith(color: Colors.white),
      textAlign: TextAlign.center,
    );
  }

  Widget _buildImages() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: Styles.screenHorizPadding),
      child: Stack(
        clipBehavior: Clip.antiAlias,
        children: [
          buildImage(imagesAnimationController[0], 'assets/onboarding/temp.png'),
          buildImage(imagesAnimationController[1], 'assets/onboarding/temp.png'),
          buildImage(imagesAnimationController[2], 'assets/onboarding/temp.png'),
          buildImage(imagesAnimationController[3], 'assets/onboarding/temp.png'),
          buildImage(imagesAnimationController[4], 'assets/onboarding/temp.png'),
        ],
      ),
    );
  }

  Widget buildImage(AnimationController controller, String asset) {
    return MultiAnimation(
      controller: controller,
      beginOffset: const Offset(-0.1, 0),
      child: Image.asset(asset)
    );
  }

  Widget _buildContentCard(int activeStepIndex, BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.vertical(top: Radius.circular(30))
      ),
      padding: const EdgeInsets.symmetric(horizontal: Styles.screenHorizPadding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const SizedBox(height: 20),
          ProgressDots(total: 5, activeIndex: activeStepIndex),
          const SizedBox(height: 20),
          Stack(
            children: [
              _buildContent(imagesAnimationController[0], 'Lorem ipsum', 'Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum'),
              _buildContent(imagesAnimationController[1], 'Lorem ipsum', 'Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum'),
              _buildContent(imagesAnimationController[2], 'Lorem ipsum', 'Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum'),
              _buildContent(imagesAnimationController[3], 'Lorem ipsum', 'Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum'),
              _buildContent(imagesAnimationController[4], 'Lorem ipsum', 'Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum'),
            ],
          ),
          const Spacer(),
          ElevatedButton(
            onPressed: () => context.read<OnboardingScreenBloc>().add(const OnboardingScreenEvent.nextStepRequested()),
            style: Styles.getAccentButtonTheme(context),
            child: Text('Avanti')
          ),
          const SizedBox(height: 20),
        ],
      ),
    );
  }

  Widget _buildContent(AnimationController controller, String title, String text) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        const SizedBox(height: 30),
        MultiAnimation(
          controller: controller,
          beginOffset: const Offset(-0.05, 0),
          endInterval: 0.6,
          child: Text(title,
            style: Theme.of(context).textTheme.headlineMedium,
            textAlign: TextAlign.center,
          ),
        ),
        const SizedBox(height: 30),
        MultiAnimation(
          controller: controller,
          beginOffset: const Offset(-0.05, 0),
          beginInterval: 0.4,
          child: Text(text,
            style: Theme.of(context).textTheme.bodyMedium,
            textAlign: TextAlign.center,
          ),
        ),
      ],
    );
  }
}

