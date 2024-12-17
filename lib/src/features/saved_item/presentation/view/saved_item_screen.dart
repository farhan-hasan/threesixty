import 'package:enigma/src/core/utils/extension/context_extension.dart';
import 'package:enigma/src/shared/widgets/saved_item_screen_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../core/styles/theme/app_theme.dart';
import '../../../../shared/widgets/rectangular_card.dart';

class SavedItemScreen extends StatelessWidget {
  const SavedItemScreen({super.key});
  static const route = '/saved_item_screen';

  static setRoute() => '/saved_item_screen';
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Text("Saved items", style: context.titleLarge?.copyWith(color: Colors.black),),
          centerTitle: true,
          actions: const [
            Icon(CupertinoIcons.cart),
            SizedBox(width: 10,)
          ],
          bottom: TabBar(
              labelColor: lightTheme.primaryColor,
              unselectedLabelColor: Colors.grey,
              indicatorSize: TabBarIndicatorSize.values.first,
              indicatorColor: lightTheme.primaryColor,
              dividerColor: Colors.transparent,
              tabs: const [
                Tab(text: "All Items"),
                Tab(text: "Board"),
              ]),
        ),
        body:Padding(
          padding: const EdgeInsets.all(16.0),
          child: TabBarView(children: [

            SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(height: context.height*.05,),
                  SavedItemScreenCard(title: "Casing",
                    subtitle: Row(
                    children: [
                      Text("Color: ", style: context.titleSmall?.copyWith(color: Colors.grey),),
                      SizedBox(width: context.width/50,),
                      CircleAvatar(
                        backgroundColor: lightTheme.primaryColor,
                        radius: 12,
                      )
                    ],
                  ), image: "assets/images/gaming_pc.png", price: "\$159",),
                  SizedBox(height: context.height*.05,),
                  SavedItemScreenCard(title: "Monitor",
                    subtitle: Row(
                      children: [
                        Text("Color: ", style: context.titleSmall?.copyWith(color: Colors.grey),),
                        SizedBox(width: context.width/50,),
                        CircleAvatar(
                          backgroundColor: Colors.blue.shade900,
                          radius: 12,
                        )
                      ],
                    ), image: "assets/images/monitor.png", price: "\$259",),
                  SizedBox(height: context.height*.05,),
                  SavedItemScreenCard(title: "Headphone",
                    subtitle: Row(
                      children: [
                        Text("Color: ", style: context.titleSmall?.copyWith(color: Colors.grey),),
                        SizedBox(width: context.width/50,),
                        CircleAvatar(
                          backgroundColor: Colors.black,
                          radius: 12,
                        )
                      ],
                    ), image: "assets/images/headphone.png", price: "\$29",),
                ],
              ),
            ),

            SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(height: context.height*.05,),
                  SavedItemScreenCard(title: "Xbox 360",
                    subtitle: Row(
                      children: [
                        Text("Color: ", style: context.titleSmall?.copyWith(color: Colors.grey),),
                        SizedBox(width: context.width/50,),
                        CircleAvatar(
                          backgroundColor: Colors.grey,
                          radius: 12,
                        )
                      ],
                    ), image: "assets/images/gaming_console.png", price: "\$225",),
                  SizedBox(height: context.height*.05,),
                  SavedItemScreenCard(title: "Controller",
                    subtitle: Row(
                      children: [
                        Text("Color: ", style: context.titleSmall?.copyWith(color: Colors.grey),),
                        SizedBox(width: context.width/50,),
                        CircleAvatar(
                          backgroundColor: Colors.black,
                          radius: 12,
                        )
                      ],
                    ), image: "assets/images/joystick.png", price: "\$49",),
                  SizedBox(height: context.height*.05,),
                  SavedItemScreenCard(title: "Xbox Series X",
                    subtitle: Row(
                      children: [
                        Text("Color: ", style: context.titleSmall?.copyWith(color: Colors.grey),),
                        SizedBox(width: context.width/50,),
                        CircleAvatar(
                          backgroundColor: Colors.black,
                          radius: 12,
                        )
                      ],
                    ), image: "assets/images/xbox.png", price: "\$999",),
                ],
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
