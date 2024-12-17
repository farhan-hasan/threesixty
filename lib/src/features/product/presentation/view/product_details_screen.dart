import 'package:enigma/src/core/styles/theme/app_theme.dart';
import 'package:enigma/src/core/utils/extension/context_extension.dart';
import 'package:enigma/src/shared/widgets/product_carousel.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../shared/data/model/slider_data.dart';
import '../../../../shared/widgets/custom_carousel.dart';

class ProductDetailsScreen extends StatelessWidget {
  ProductDetailsScreen({super.key});

  static const route = '/product_details_screen';

  static setRoute() => '/product_details_screen';

  List<SliderData> sliderList = [
    SliderData(
        image: "assets/images/xbox.png",
        //title: "View Product 360 degrees",
        //description: "You can see the product with all angles, true and convenient"
    ),
    SliderData(
        image: "assets/images/joystick.png",
        //title: "Find products easily",
        //description: "You just need to take a photo or upload and we will find similar products for you"
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
            onTap: () {
              context.pop();
            },
            child: Icon(Icons.navigate_before)),
        actions: [
          Icon(Icons.share),
          SizedBox(width: 16,),
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              ProductCarousel(sliderList: sliderList),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  children: [
                    Card(
                      elevation: 10,
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Xbox Series X",style: context.titleLarge?.copyWith(color: Colors.black),),
                            SizedBox(height: 10,),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Icon(Icons.star, color: Colors.amber,),
                                    Icon(Icons.star, color: Colors.amber,),
                                    Icon(Icons.star, color: Colors.amber,),
                                    Icon(Icons.star, color: Colors.amber,),
                                    Icon(Icons.star, color: Colors.grey,),
                                    SizedBox(width: 10,),
                                    Text("4.9",style: context.bodyLarge?.copyWith(fontWeight: FontWeight.bold,color: Colors.black),)
                                  ],
                                ),
                                Text("\$499",style: context.bodyLarge?.copyWith(color: Colors.black),)
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 20,),
                    Card(
                      elevation: 10,
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Description",style: context.titleLarge?.copyWith(color: Colors.black),),
                            SizedBox(height: 10,),
                            Text("The Microsoft Xbox Series X Gaming Console delivers sensationally smooth frame rates of up to 120FPS with the visual pop of HDR. Immerse yourself with sharper characters, brighter worlds, and impossible details with true-to-life 4K. The Xbox Series X is equipped with 8X Cores @ 3.8 GHz (3.66 GHz w/SMT) Custom Zen 2 CPU and 12 TFLOPS, 52 CUs @1.825 GHz Custom RDNA 2 GPU. It comes with 16GB GDDR6 w/320 bit-wide bus memory and 1TB Custom NVME SSD. It has a split motherboard that keeps the console’s internals evenly temperature controlled allowing for an even higher output of power. It has a heat-sink chassis that merges parallel cooling with a unique design to increase the reliability of performance. The vapor chamber in the Xbox Series X enables an even spread of temperatures within the core. A vertical airflow system keeps the console running smoothly and cooling quietly. The Microsoft Xbox Series X Gaming Console offers Up to 8K HDR and 4K UHD Blu-Ray. It also delivers up to 120 FPS. For sound capabilities, it offers  Dolby Digital 5.1, DTS 5.1, Dolby TrueHD with Atmos, and up to 7.1 L-PCM. It offers 1x HDMI 2.1 port, 3x USB 3.1 Gen 1 ports, 802.3 10/100/1000 Ethernet, and 802.11ac dual-band wireless connectivity. The Microsoft Xbox Series X Gaming Console comes with no warranty.",
                              style: context.bodySmall?.copyWith(color: Colors.grey),
                              maxLines: 8,
                              overflow: TextOverflow.ellipsis,
                            ),
                            SizedBox(height: 10,),
                            Divider(
                              thickness: 1,
                              color: Colors.grey.shade400,
                              height: 10,
                            ),
                            SizedBox(height: 10,),
                            Text("Free delivery & returns",style: context.titleLarge?.copyWith(color: Colors.black),),
                            SizedBox(height: 10,),
                            Text("The Microsoft Xbox Series X Gaming Console delivers sensationally smooth frame rates of up to 120FPS with the visual pop of HDR. Immerse yourself with sharper characters, brighter worlds, and impossible details with true-to-life 4K. The Xbox Series X is equipped with 8X Cores @ 3.8 GHz (3.66 GHz w/SMT) Custom Zen 2 CPU and 12 TFLOPS, 52 CUs @1.825 GHz Custom RDNA 2 GPU. It comes with 16GB GDDR6 w/320 bit-wide bus memory and 1TB Custom NVME SSD. It has a split motherboard that keeps the console’s internals evenly temperature controlled allowing for an even higher output of power. It has a heat-sink chassis that merges parallel cooling with a unique design to increase the reliability of performance. The vapor chamber in the Xbox Series X enables an even spread of temperatures within the core. A vertical airflow system keeps the console running smoothly and cooling quietly. The Microsoft Xbox Series X Gaming Console offers Up to 8K HDR and 4K UHD Blu-Ray. It also delivers up to 120 FPS. For sound capabilities, it offers  Dolby Digital 5.1, DTS 5.1, Dolby TrueHD with Atmos, and up to 7.1 L-PCM. It offers 1x HDMI 2.1 port, 3x USB 3.1 Gen 1 ports, 802.3 10/100/1000 Ethernet, and 802.11ac dual-band wireless connectivity. The Microsoft Xbox Series X Gaming Console comes with no warranty.",
                              style: context.bodySmall?.copyWith(color: Colors.grey),
                              maxLines: 3,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 20,),
                    SizedBox(
                        width: context.width,
                        child: ElevatedButton(onPressed: () {}, child: Text("Add to cart",)))
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
