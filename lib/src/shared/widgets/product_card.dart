import 'package:enigma/src/core/utils/extension/context_extension.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProductCard extends StatelessWidget {
  ProductCard({
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
    return Stack(
      clipBehavior: Clip.none,
      children: [
        SizedBox(
          width: context.width/2.1,
          height: context.height * .25,
          child: Card(
            elevation: 5,
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(overflow: TextOverflow.ellipsis,title, style: context.titleSmall?.copyWith(color: Colors.black),),
                      const SizedBox(height: 10,),
                      Text(subtitle, style: context.bodyLarge?.copyWith(color: Colors.black),)
                    ],
                  ),
                  Icon(CupertinoIcons.heart)
                ],
              ),
            ),
          ),
        ),
        Positioned(
          left: context.width*.11,
          child: SizedBox(
            height: context.height*.15,
            width: context.width*.25,
            child: Image.asset(image, fit: BoxFit.contain,),
          ),
        )
      ],
    );
  }
}