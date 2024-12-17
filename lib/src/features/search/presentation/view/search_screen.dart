import 'package:enigma/src/core/styles/theme/app_theme.dart';
import 'package:enigma/src/core/utils/extension/context_extension.dart';
import 'package:enigma/src/shared/widgets/rectangular_card.dart';
import 'package:flutter/material.dart';

import '../../../../core/utils/validators/validators.dart';
import '../../../../shared/widgets/custom_form_field.dart';

class SearchScreen extends StatelessWidget {
  SearchScreen({super.key});
  static const route = '/search_screen';
  static setRoute() => '/search_screen';

  final TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Container(
            width: context.width,
            decoration: BoxDecoration(
                color: Colors.grey.shade200,
                borderRadius: BorderRadius.circular(10)
            ),
            child: CustomFormField(
                suffixIcon: Icon(Icons.camera_alt_outlined, color: Colors.grey,),
                prefixIcon: Icon(Icons.search, color: lightTheme.primaryColor,),
                controller: searchController,
                hintText: "Search",
                validator: Validators.validator),
          ),
          bottom: TabBar(
              labelColor: lightTheme.primaryColor,
              unselectedLabelColor: Colors.grey,
              indicatorSize: TabBarIndicatorSize.values.first,
              indicatorColor: lightTheme.primaryColor,
              dividerColor: Colors.transparent,
              tabs: [
                Tab(text: "Gaming PC"),
                Tab(text: 'Gaming Console'),
              ]),
        ),
        body:Padding(
          padding: const EdgeInsets.all(16.0),
          child: TabBarView(children: [

            SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(height: context.height*.05,),
                  RectangularCard(title: "Casing", subtitle: "", image: "assets/images/gaming_pc.png"),
                  SizedBox(height: context.height*.05,),
                  RectangularCard(title: "Monitor", subtitle: "", image: "assets/images/monitor.png"),
                  SizedBox(height: context.height*.05,),
                  RectangularCard(title: "CPU", subtitle: "", image: "assets/images/ryzen.png"),
                  SizedBox(height: context.height*.05,),
                  RectangularCard(title: "Casing", subtitle: "", image: "assets/images/gaming_pc.png"),
                  SizedBox(height: context.height*.05,),
                  RectangularCard(title: "Monitor", subtitle: "", image: "assets/images/monitor.png"),
                  SizedBox(height: context.height*.05,),
                  RectangularCard(title: "CPU", subtitle: "", image: "assets/images/ryzen.png"),
                ],
              ),
            ),

            SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(height: context.height*.05,),
                  RectangularCard(title: "Xbox 360", subtitle: "", image: "assets/images/gaming_console.png"),
                  SizedBox(height: context.height*.05,),
                  RectangularCard(title: "Xbox X", subtitle: "", image: "assets/images/xbox.png"),
                  SizedBox(height: context.height*.05,),
                  RectangularCard(title: "Joystick", subtitle: "", image: "assets/images/joystick.png"),
                  SizedBox(height: context.height*.05,),
                  RectangularCard(title: "Xbox 360", subtitle: "", image: "assets/images/gaming_console.png"),
                  SizedBox(height: context.height*.05,),
                  RectangularCard(title: "Xbox X", subtitle: "", image: "assets/images/xbox.png"),
                  SizedBox(height: context.height*.05,),
                  RectangularCard(title: "Joystick", subtitle: "", image: "assets/images/joystick.png"),
                ],
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
