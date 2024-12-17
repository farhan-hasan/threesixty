import 'package:enigma/src/core/styles/theme/app_theme.dart';
import 'package:enigma/src/core/utils/extension/context_extension.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  static const route = '/profile_screen';

  static setRoute() => '/profile_screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: context.height * .4,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/images/profile_cover.jpg"),
                    fit: BoxFit.cover)),
            child: SafeArea(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  children: [
                    Align(
                        alignment: Alignment.centerRight,
                        child: Icon(
                          Icons.settings,
                          color: Colors.white,
                        )),
                    Container(
                      width: context.width / 2.5,
                      child: Stack(
                        children: [
                          Image.asset(
                            'assets/images/dp.png',
                            fit: BoxFit.contain,
                          ),
                          Positioned(
                            child: CircleAvatar(
                                backgroundColor: Colors.white,
                                child: Icon(
                                  Icons.edit,
                                  color: Colors.black,
                                )),
                            right: context.width / 12,
                            bottom: context.width / 20,
                          )
                        ],
                      ),
                    ),
                    Text("Farhan Hasan",
                        style:
                            context.titleLarge?.copyWith(color: Colors.white)),
                  ],
                ),
              ),
            ),
          ),
          Container(
            child:Padding(
              padding: const EdgeInsets.all(16.0),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    SizedBox(height: context.height/3,),
                    Card(
                      elevation: 10,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: [
                            ListTile(
                              leading: Icon(CupertinoIcons.cube_box,color: lightTheme.primaryColor,),
                              title: Text("My order",style: context.titleMedium?.copyWith(color: Colors.black),),
                              trailing: const Icon(CupertinoIcons.forward, color: Colors.grey,),
                            ),
                            Divider(
                              thickness: 1,
                              indent: 20,
                              endIndent: 20,
                              color: Colors.grey.shade400,
                              height: 10,
                            ),
                            ListTile(
                              leading: Icon(Icons.workspace_premium,color: lightTheme.primaryColor,),
                              title: Text("Premium delivery",style: context.titleMedium?.copyWith(color: Colors.black),),
                              trailing: const Icon(CupertinoIcons.forward, color: Colors.grey,),
                            ),
                            Divider(
                              thickness: 1,
                              indent: 20,
                              endIndent: 20,
                              color: Colors.grey.shade400,
                              height: 10,
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 20,),
                    Card(
                      elevation: 10,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: [
                            ListTile(
                              leading: Icon(CupertinoIcons.rectangle_stack_person_crop,color: lightTheme.primaryColor,),
                              title: Text("My details",style: context.titleMedium?.copyWith(color: Colors.black),),
                              trailing: const Icon(CupertinoIcons.forward, color: Colors.grey,),
                            ),
                            Divider(
                              thickness: 1,
                              indent: 20,
                              endIndent: 20,
                              color: Colors.grey.shade400,
                              height: 10,
                            ),
                            ListTile(
                              leading: Icon(Icons.pin_drop,color: lightTheme.primaryColor,),
                              title: Text("Address book",style: context.titleMedium?.copyWith(color: Colors.black),),
                              trailing: const Icon(CupertinoIcons.forward, color: Colors.grey,),
                            ),
                            Divider(
                              thickness: 1,
                              indent: 20,
                              endIndent: 20,
                              color: Colors.grey.shade400,
                              height: 10,
                            ),
                            ListTile(
                              leading: Icon(Icons.payment,color: lightTheme.primaryColor,),
                              title: Text("Payment methods",style: context.titleMedium?.copyWith(color: Colors.black),),
                              trailing: const Icon(CupertinoIcons.forward, color: Colors.grey,),
                            ),
                            Divider(
                              thickness: 1,
                              indent: 20,
                              endIndent: 20,
                              color: Colors.grey.shade400,
                              height: 10,
                            ),
                            ListTile(
                              leading: Icon(CupertinoIcons.person_2,color: lightTheme.primaryColor,),
                              title: Text("Contact preferences",style: context.titleMedium?.copyWith(color: Colors.black),),
                              trailing: const Icon(CupertinoIcons.forward, color: Colors.grey,),
                            ),
                            Divider(
                              thickness: 1,
                              indent: 20,
                              endIndent: 20,
                              color: Colors.grey.shade400,
                              height: 10,
                            ),
                            ListTile(
                              leading: Icon(CupertinoIcons.person,color: lightTheme.primaryColor,),
                              title: Text("Social accounts",style: context.titleMedium?.copyWith(color: Colors.black),),
                              trailing: const Icon(CupertinoIcons.forward, color: Colors.grey,),
                            ),
                            Divider(
                              thickness: 1,
                              indent: 20,
                              endIndent: 20,
                              color: Colors.grey.shade400,
                              height: 10,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
