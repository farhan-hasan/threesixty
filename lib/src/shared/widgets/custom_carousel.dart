import 'dart:ui';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:enigma/src/core/styles/theme/app_theme.dart';
import 'package:enigma/src/core/utils/extension/context_extension.dart';
import 'package:enigma/src/shared/data/model/slider_data.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'network_image_widget.dart';


class CustomCarousel extends StatefulWidget {
  const CustomCarousel({
    super.key,
    required this.sliderList,
  });

  final List<SliderData> sliderList;

  @override
  State<CustomCarousel> createState() => _CustomCarouselState();
}

class _CustomCarouselState extends State<CustomCarousel> {
  final ValueNotifier<int> _selectedCarouselIndex = ValueNotifier(0);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _buildCarouselSlider(),
        const SizedBox(
          height: 8,
        ),
        _buildCarouselIndicator()
      ],
    );
  }

  CarouselSlider _buildCarouselSlider() {
    return CarouselSlider(
      options: CarouselOptions(
          viewportFraction: 1,
          height: context.height * 0.7,
          onPageChanged: (index, _) {
            _selectedCarouselIndex.value = index;
          }),
      items: widget.sliderList.map((slider) {
        return Builder(
          builder: (BuildContext context) {
            return Container(
                width: context.width,
                margin: const EdgeInsets.symmetric(horizontal: 5.0),
                decoration: BoxDecoration(
                    //color: lightTheme.primaryColor,
                    borderRadius: BorderRadius.circular(8)),
                alignment: Alignment.center,
                child: Column(
                  children: [
                    Expanded(
                      flex: 2,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(8),
                        child: Image.asset(slider.image ?? "")
                      ),
                    ),
                    if(slider.title!=null && slider.description!=null)Expanded(
                      flex: 1,
                      child: _buildSliderDescription(slider),
                    )
                  ],
                ));
          },
        );
      }).toList(),
    );
  }

  Widget _buildSliderDescription(SliderData slider) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            textAlign: TextAlign.center,
            slider.title ?? '',
            style: context.titleLarge?.copyWith(color: lightTheme.primaryColor),
          ),
          SizedBox(height: 20,),
          Text(
            textAlign: TextAlign.center,
            slider.description ?? '',
            maxLines: 3,
            style: context.bodyLarge?.copyWith(color: Colors.grey),
          ),
        ],
      ),
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