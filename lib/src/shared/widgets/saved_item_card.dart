import 'package:enigma/src/core/router/router.dart';
import 'package:enigma/src/core/utils/extension/context_extension.dart';
import 'package:enigma/src/features/product/presentation/view/product_details_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SavedItemCard extends StatelessWidget {
  SavedItemCard({
    super.key,
    required this.title,
    required this.subtitle,
    required this.image,
  });

  String title;
  String subtitle;
  String image;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        context.push(ProductDetailsScreen.route);
      },
      child: SizedBox(
        width: context.width,
        child: Stack(
          clipBehavior: Clip.none,
          children: [
            Align(
              alignment: Alignment.centerRight,
              child: SizedBox(
                width: context.width/1.4,
                height: context.height * .15,
                child: Card(
                  elevation: 5,
                  child: Padding(
                    padding: EdgeInsets.only(left: context.width/6, right: context.width/20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          flex: 2,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(overflow: TextOverflow.ellipsis,title, style: context.titleMedium?.copyWith(color: Colors.black),),
                              SizedBox(height: 10,),
                              Text(subtitle, style: context.bodyLarge?.copyWith(color: Colors.black),),
                            ],
                          ),
                        ),
                        Expanded(
                          flex: 1,
                            child: Icon(CupertinoIcons.forward))
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              left: 0,
              bottom: 0,
              child: SizedBox(
                height: context.height*.2,
                width: context.width*.4,
                child: Image.asset(image, fit: BoxFit.contain,),
              ),
            )
          ],
        ),
      ),
    );
  }
}