import 'package:enigma/src/core/utils/extension/context_extension.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SquareCard extends StatelessWidget {
  SquareCard({
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
          width: context.width/2.2,
          height: context.height * .27,
          child: Card(
            elevation: 5,
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(title, style: context.titleMedium?.copyWith(color: Colors.black),),
                  SizedBox(height: 10,),
                  Text(maxLines: 2,overflow: TextOverflow.ellipsis,subtitle, style: context.bodySmall?.copyWith(color: Colors.black),)
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