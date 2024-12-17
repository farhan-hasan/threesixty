import 'package:enigma/src/core/utils/extension/context_extension.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SavedItemScreenCard extends StatelessWidget {
  SavedItemScreenCard({
    super.key,
    required this.title,
    required this.subtitle,
    required this.image,
    required this.price,
  });

  String title;
  Widget subtitle;
  String image;
  String price;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
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
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          if(title.isNotEmpty)Text(title, style: context.titleLarge?.copyWith(color: Colors.black),),
                          SizedBox(height: 10,),
                          subtitle,
                          SizedBox(height: 10,),
                          Text(price, style: context.titleLarge?.copyWith(color: Colors.black),)
                        ],
                      ),
                      Icon(CupertinoIcons.cart)
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
    );
  }
}