import 'package:flutter/material.dart';
import 'package:shop_bd/utils/constant/image.dart';
import 'package:shop_bd/utils/constant/size.dart';
import 'package:shop_bd/utils/constant/text_string.dart';
import 'package:shop_bd/utils/helper/helper_funtion.dart';

class Onboarding extends StatelessWidget {
  const Onboarding({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          //horizontal page view
          onboarding_widgets(
            image: images.onboard1,
            title: TextString.onboardingSubtitle1,
            subtitle: TextString.onboardingSubtitle1,
          )

          //skip button

          //dot

          //circular button
        ],
      ),
    );
  }
}

class onboarding_widgets extends StatelessWidget {
  const onboarding_widgets(
      {super.key,
      required this.image,
      required this.title,
      required this.subtitle});

  final String image, title, subtitle;
  @override
  Widget build(BuildContext context) {
    return PageView(
      children: [
        Column(
          children: [
            Image(
                width: HelperFunction.screensize().width * .6,
                height: HelperFunction.screensize().height * .8,
                image: AssetImage(image)),
            Text(
              title,
              style: Theme.of(context).textTheme.headlineMedium,
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: AppSizes.spacebetweenitem,
            ),
            Text(
              subtitle,
              style: Theme.of(context).textTheme.bodyMedium,
              textAlign: TextAlign.center,
            )
          ],
        )
      ],
    );
  }
}
