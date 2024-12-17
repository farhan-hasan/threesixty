
import 'package:bot_toast/bot_toast.dart';
import 'package:enigma/src/features/auth/presentation/auth_screen/view/auth_screen.dart';
import 'package:enigma/src/features/auth/presentation/forget_password/view/forgot_password_screen.dart';
import 'package:enigma/src/features/auth/presentation/login/view/login_screen.dart';
import 'package:enigma/src/features/auth/presentation/signup/view/signup_screen.dart';
import 'package:enigma/src/features/home/presentation/view/home_screen.dart';
import 'package:enigma/src/features/product/presentation/view/product_details_screen.dart';
import 'package:enigma/src/features/profile/presentation/view/profile_screen.dart';
import 'package:enigma/src/shared/view/bottom_nav_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../features/cart/presentation/view/cart_screen.dart';
import '../../features/saved_item/presentation/view/saved_item_screen.dart';
import '../../features/search/presentation/view/search_screen.dart';

final rootNavigatorKey = GlobalKey<NavigatorState>();

final goRouterProvider = Provider(
  (ref) {
    return GoRouter(
      navigatorKey: rootNavigatorKey,
      initialLocation:AuthScreen.route,
      observers: [BotToastNavigatorObserver()],
      routes: [
        GoRoute(
          path: AuthScreen.route,
          builder: (context, state) {
            return AuthScreen();
          },
        ),
        GoRoute(
          path: LoginScreen.route,
          builder: (context, state) {
            return LoginScreen();
          },
        ),
        GoRoute(
          path: SignupScreen.route,
          builder: (context, state) {
            return SignupScreen();
          },
        ),
        GoRoute(
          path: ForgotPasswordScreen.route,
          builder: (context, state) {
            return ForgotPasswordScreen();
          },
        ),
        GoRoute(
          path: ProductDetailsScreen.route,
          builder: (context, state) {
            return ProductDetailsScreen();
          },
        ),
        StatefulShellRoute.indexedStack(
            branches: [
              StatefulShellBranch(
                  initialLocation: HomeScreen.setRoute(),
                  routes: [
                    GoRoute(
                        path: HomeScreen.route,
                        builder: (context, state) {
                          return HomeScreen();
                        }),
                  ]),
              StatefulShellBranch(
                  initialLocation: SearchScreen.setRoute(),
                  routes: [
                    GoRoute(
                        path: SearchScreen.route,
                        builder: (context, state) {
                          return SearchScreen();
                        }),
                  ]),
              StatefulShellBranch(
                  initialLocation: CartScreen.setRoute(),
                  routes: [
                    GoRoute(
                        path: CartScreen.route,
                        builder: (context, state) {
                          return CartScreen();
                        }),
                  ]),
              StatefulShellBranch(
                  initialLocation: SavedItemScreen.setRoute(),
                  routes: [
                    GoRoute(
                        path: SavedItemScreen.route,
                        builder: (context, state) {
                          return SavedItemScreen();
                        }),
                  ]),
              StatefulShellBranch(
                  initialLocation: ProfileScreen.setRoute(),
                  routes: [
                    GoRoute(
                        path: ProfileScreen.route,
                        builder: (context, state) {
                          return ProfileScreen();
                        }),
                  ]),
            ],
            builder: (context, state, navigationShell) {
              return BottomNavScreen(navigationShell: navigationShell);
            })
      ],
    );
  },
);
