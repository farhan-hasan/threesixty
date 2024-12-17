import 'package:enigma/src/core/utils/extension/context_extension.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'custom_item_count.dart';

class CartCard extends StatelessWidget {
  CartCard({
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
  ValueNotifier<num> amount = ValueNotifier(0);

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
              height: context.height * .20,
              child: Card(
                elevation: 5,
                child: Padding(
                  padding: EdgeInsets.only(left: context.width/6, right: context.width/20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      if(title.isNotEmpty)Text(title, style: context.titleLarge?.copyWith(color: Colors.black),),
                      SizedBox(height: 10,),
                      subtitle,
                      SizedBox(height: 10,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(price, style: context.titleLarge?.copyWith(color: Colors.black),),
                          ValueListenableBuilder(
                            builder: (context, value,child) {
                              return ItemCount(
                                textStyle: context.titleMedium?.copyWith(color: Colors.black),
                                initialValue: amount.value,
                                minValue: 0,
                                maxValue: 10,
                                decimalPlaces: 0,
                                onChanged: (value) {
                                  amount.value = value;
                                  print('Selected value: $value');
                                },
                              );
                            }, valueListenable: amount,
                          )
                        ],
                      )
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
          ),
          const Positioned(
            right: 0,
            top: 0,
            child: Icon(Icons.cancel_outlined, color: Colors.red,),
          )
        ],
      ),
    );
  }
}