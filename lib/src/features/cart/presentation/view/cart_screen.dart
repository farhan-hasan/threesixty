import 'package:enigma/src/core/styles/theme/app_theme.dart';
import 'package:enigma/src/core/utils/extension/context_extension.dart';
import 'package:enigma/src/shared/widgets/cart_card.dart';
import 'package:flutter/material.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  static const route = '/cart_screen';

  static setRoute() => '/cart_screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Container(
          height: context.height,
          child: Stack(
            children: [
              SingleChildScrollView(
                child: Column(
                  children: [
                    SizedBox(
                      height: context.height / 30,
                    ),
                    CartCard(
                        title: "Controller",
                        subtitle: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Text(
                                  "Color: ",
                                  style: context.titleSmall
                                      ?.copyWith(color: Colors.grey),
                                ),
                                SizedBox(
                                  width: context.width / 50,
                                ),
                                CircleAvatar(
                                  backgroundColor: lightTheme.primaryColor,
                                  radius: 12,
                                )
                              ],
                            ),
                            Row(
                              children: [
                                Text(
                                  "Size: ",
                                  style: context.titleSmall
                                      ?.copyWith(color: Colors.grey),
                                ),
                                SizedBox(
                                  width: context.width / 50,
                                ),
                                Text(
                                  "M",
                                  style: context.titleSmall
                                      ?.copyWith(color: Colors.black),
                                )
                              ],
                            ),
                          ],
                        ),
                        image: "assets/images/joystick.png",
                        price: "\$29"),
                    SizedBox(
                      height: context.height / 30,
                    ),
                    CartCard(
                        title: "Xbox Series X",
                        subtitle: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Text(
                                  "Color: ",
                                  style: context.titleSmall
                                      ?.copyWith(color: Colors.grey),
                                ),
                                SizedBox(
                                  width: context.width / 50,
                                ),
                                CircleAvatar(
                                  backgroundColor: Colors.grey,
                                  radius: 12,
                                )
                              ],
                            ),
                            Row(
                              children: [
                                Text(
                                  "Size: ",
                                  style: context.titleSmall
                                      ?.copyWith(color: Colors.grey),
                                ),
                                SizedBox(
                                  width: context.width / 50,
                                ),
                                Text(
                                  "S",
                                  style: context.titleSmall
                                      ?.copyWith(color: Colors.black),
                                )
                              ],
                            ),
                          ],
                        ),
                        image: "assets/images/xbox.png",
                        price: "\$29"),
                    SizedBox(
                      height: context.height / 30,
                    ),
                    CartCard(
                        title: "Headphone",
                        subtitle: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Text(
                                  "Color: ",
                                  style: context.titleSmall
                                      ?.copyWith(color: Colors.grey),
                                ),
                                SizedBox(
                                  width: context.width / 50,
                                ),
                                CircleAvatar(
                                  backgroundColor: Colors.black,
                                  radius: 12,
                                )
                              ],
                            ),
                            Row(
                              children: [
                                Text(
                                  "Size: ",
                                  style: context.titleSmall
                                      ?.copyWith(color: Colors.grey),
                                ),
                                SizedBox(
                                  width: context.width / 50,
                                ),
                                Text(
                                  "L",
                                  style: context.titleSmall
                                      ?.copyWith(color: Colors.black),
                                )
                              ],
                            ),
                          ],
                        ),
                        image: "assets/images/headphone.png",
                        price: "\$29"),
                  ],
                ),
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Card(
                  elevation: 10,
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Total:",
                              style: context.titleMedium
                                  ?.copyWith(color: Colors.black),
                            ),
                            Text(
                              "\$123",
                              style: context.titleLarge
                                  ?.copyWith(color: lightTheme.primaryColor),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        SizedBox(
                            width: context.width,
                            child: ElevatedButton(
                                onPressed: () {}, child: Text("Checkout"))),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      )),
    );
  }
}
