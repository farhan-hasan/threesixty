import 'package:enigma/src/core/utils/extension/context_extension.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RectangularCard extends StatelessWidget {
  RectangularCard({
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
          width: context.width,
          height: context.height * .17,
          child: Card(
            elevation: 5,
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  if(title.isNotEmpty)Text(title, style: context.headlineMedium?.copyWith(color: Colors.black),),
                  SizedBox(height: 10,),
                  if(subtitle.isNotEmpty)Text(subtitle, style: context.bodyLarge?.copyWith(color: Colors.black),)
                ],
              ),
            ),
          ),
        ),
        Positioned(
          right: 0,
          bottom: 0,
          child: SizedBox(
            height: context.height*.2,
            width: context.width*.4,
            child: Image.asset(image, fit: BoxFit.contain,),
          ),
        )
      ],
    );
  }
}