import 'package:enigma/src/core/styles/theme/app_theme.dart';
import 'package:enigma/src/core/utils/extension/context_extension.dart';
import 'package:enigma/src/shared/widgets/product_card.dart';
import 'package:enigma/src/shared/widgets/saved_item_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../shared/widgets/rectangular_card.dart';
import '../../../../shared/widgets/square_card.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  static const route = '/home_screen';

  static setRoute() => '/home_screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: 50,
                ),
                RectangularCard(
                  title: "Gaming PC",
                  subtitle: "The Allrounders",
                  image: "assets/images/gaming_pc.png",
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SquareCard(
                      title: "Monitors",
                      subtitle: "Extraordinary visual experience",
                      image: "assets/images/monitor.png",
                    ),
                    SquareCard(
                      title: "CPUs",
                      subtitle: "Lightspeed performance",
                      image: "assets/images/ryzen.png",
                    )
                  ],
                ),
                SizedBox(
                  height: 70,
                ),
                RectangularCard(
                  title: "Consoles",
                  subtitle: "Nonstop Gaming",
                  image: "assets/images/gaming_console.png",
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SquareCard(
                      title: "Headphones",
                      subtitle: "Immersive sound",
                      image: "assets/images/headphone.png",
                    ),
                    SquareCard(
                      title: "Joysticks",
                      subtitle: "Full control",
                      image: "assets/images/joystick.png",
                    )
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                sectionHeader(context,
                    leading: Text(
                      "Recently Viewed",
                      style: context.titleLarge?.copyWith(color: Colors.black),
                    ),
                    trailing: Icon(
                      Icons.cancel_outlined,
                      color: Colors.red,
                    )),
                SizedBox(
                  height: 50,
                ),
                SizedBox(
                  width: context.width,
                  height: context.height/4,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    primary: false,
                    shrinkWrap: true,
                    children: [
                      ProductCard(
                        title: "Xbox Controller",
                        subtitle: "\$29",
                        image: "assets/images/joystick.png",
                      ),
                      ProductCard(
                        title: "JBL Headphone",
                        subtitle: "\$59",
                        image: "assets/images/headphone.png",
                      ),
                    ],
                  ),
                ),
                // Row(
                //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                //   children: [
                //     ProductCard(
                //       title: "Xbox Controller",
                //       subtitle: "\$29",
                //       image: "assets/images/joystick.png",
                //     ),
                //     ProductCard(
                //       title: "JBL Headphone",
                //       subtitle: "\$59",
                //       image: "assets/images/headphone.png",
                //     ),
                //   ],
                // ),
                SizedBox(
                  height: 20,
                ),
                sectionHeader(context,
                    leading: Text(
                      "Saved items",
                      style: context.titleLarge?.copyWith(color: Colors.black),
                    ),
                    trailing: Text(
                      "View all",
                      style: context.titleSmall?.copyWith(color: Colors.black),
                    )),
                SizedBox(
                  height: 50,
                ),
                SavedItemCard(
                  title: "Xbox Series X",
                  subtitle: "\$499",
                  image: "assets/images/xbox.png",
                ),
                SizedBox(
                  height: 50,
                ),
                SavedItemCard(
                  title: "JBL Headphone",
                  subtitle: "\$59",
                  image: "assets/images/headphone.png",
                ),
                SizedBox(
                  height: 20,
                ),
                sectionHeader(context,
                    leading: Text(
                      "Brands you may like",
                      style: context.titleLarge?.copyWith(color: Colors.black),
                    ),
                    trailing: SizedBox.shrink()),
                SizedBox(
                  height: 20,
                ),
                Wrap(
                  runSpacing: 5,
                  spacing: 5,
                  children: [
                    Container(
                      padding: EdgeInsets.all(16),
                      decoration: BoxDecoration(
                          color: Colors.grey.shade200,
                          borderRadius: BorderRadius.circular(10)),
                      child: Text(
                        "Acer",
                        style:
                            context.titleMedium?.copyWith(color: Colors.black),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(16),
                      decoration: BoxDecoration(
                          color: Colors.grey.shade200,
                          borderRadius: BorderRadius.circular(10)),
                      child: Text(
                        "Asus",
                        style:
                            context.titleMedium?.copyWith(color: Colors.black),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(16),
                      decoration: BoxDecoration(
                          color: Colors.grey.shade200,
                          borderRadius: BorderRadius.circular(10)),
                      child: Text(
                        "Lenovo",
                        style:
                            context.titleMedium?.copyWith(color: Colors.black),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(16),
                      decoration: BoxDecoration(
                          color: Colors.grey.shade200,
                          borderRadius: BorderRadius.circular(10)),
                      child: Text(
                        "Corsair",
                        style:
                            context.titleMedium?.copyWith(color: Colors.black),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(16),
                      decoration: BoxDecoration(
                          color: Colors.grey.shade200,
                          borderRadius: BorderRadius.circular(10)),
                      child: Text(
                        "Microsoft",
                        style:
                            context.titleMedium?.copyWith(color: Colors.black),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(16),
                      decoration: BoxDecoration(
                          color: Colors.grey.shade200,
                          borderRadius: BorderRadius.circular(10)),
                      child: Text(
                        "Intel",
                        style:
                            context.titleMedium?.copyWith(color: Colors.black),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget sectionHeader(BuildContext context,
      {required Widget leading, required Widget trailing}) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [leading, trailing],
    );
  }
}
