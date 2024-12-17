import 'package:enigma/src/core/router/router.dart';
import 'package:enigma/src/core/utils/extension/context_extension.dart';
import 'package:enigma/src/features/auth/presentation/signup/view/signup_screen.dart';
import 'package:enigma/src/shared/data/model/slider_data.dart';
import 'package:enigma/src/shared/widgets/custom_carousel.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

class AuthScreen extends ConsumerStatefulWidget {
  AuthScreen({super.key});

  static const route = '/auth_screen';

  static setRoute() => '/auth_screen';

  @override
  ConsumerState<AuthScreen> createState() => _AuthScreenState();
}

class _AuthScreenState extends ConsumerState<AuthScreen> {
  List<SliderData> sliderList = [
    SliderData(
      image: "assets/gifs/auth_gif.gif",
      title: "View Product 360 degrees",
      description: "You can see the product with all angles, true and convenient"
    ),
    SliderData(
        image: "assets/gifs/camera_gif.gif",
        title: "Find products easily",
        description: "You just need to take a photo or upload and we will find similar products for you"
    ),
    SliderData(
        image: "assets/gifs/card_gif.gif",
        title: "View Product 360 degrees",
        description: "You can see the product with all angles, true and convenient"
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CustomCarousel(sliderList: sliderList),
              Container(
                width: context.width,
                child: ElevatedButton(onPressed: () {
                  ref.read(goRouterProvider).push(SignupScreen.route);
                }, child: const Text("Get Started")),
              )
            ],
          ),
        ),
      ),
    );
  }
}
