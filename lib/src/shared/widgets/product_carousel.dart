import 'dart:ui';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:enigma/src/core/styles/theme/app_theme.dart';
import 'package:enigma/src/core/utils/extension/context_extension.dart';
import 'package:enigma/src/shared/data/model/slider_data.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'network_image_widget.dart';


class ProductCarousel extends StatefulWidget {
  const ProductCarousel({
    super.key,
    required this.sliderList,
  });

  final List<SliderData> sliderList;

  @override
  State<ProductCarousel> createState() => _CustomCarouselState();
}

class _CustomCarouselState extends State<ProductCarousel> {
  final ValueNotifier<int> _selectedCarouselIndex = ValueNotifier(0);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _buildCarouselSlider(),
        _buildCarouselIndicator()
      ],
    );
  }

  CarouselSlider _buildCarouselSlider() {
    return CarouselSlider(
      options: CarouselOptions(
          viewportFraction: 2,
          onPageChanged: (index, _) {
            _selectedCarouselIndex.value = index;
          }),
      items: widget.sliderList.map((slider) {
        return Builder(
          builder: (BuildContext context) {
            return Stack(
              children: [
                Container(
                  width: context.width,
                  margin: const EdgeInsets.symmetric(horizontal: 5.0),
                  decoration: BoxDecoration(
                    //color: lightTheme.primaryColor,
                      borderRadius: BorderRadius.circular(8)),
                  alignment: Alignment.center,
                  child: Image.asset(slider.image ?? ""),
                ),
                Positioned(
                  right: 0,
                  bottom: 0,
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      children: [
                        CircleAvatar(
                            backgroundColor: Colors.red,
                            foregroundColor: Colors.white,
                            child: Icon(CupertinoIcons.heart)),
                        SizedBox(height: 10,),
                        CircleAvatar(
                            backgroundColor: Colors.black,
                            foregroundColor: Colors.white,
                            child: Icon(CupertinoIcons.play)),
                      ],
                    ),
                  ),
                )
              ]
            );
          },
        );
      }).toList(),
    );
  }

  ValueListenableBuilder<int> _buildCarouselIndicator() {
    return ValueListenableBuilder(
        valueListenable: _selectedCarouselIndex,
        builder: (context, currentPage, _) {
          return Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              for (int i = 0; i < widget.sliderList.length; i++)
                Container(
                  width: 15,
                  height: 15,
                  margin: const EdgeInsets.symmetric(horizontal: 2),
                  decoration: BoxDecoration(
                      color: i == currentPage ? lightTheme.primaryColor : null,
                      border: Border.all(color: Colors.grey, width: 1),
                      borderRadius: BorderRadius.circular(50)),
                )
            ],
          );
        });
  }
}