import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shop_bd/common/style/spacing_style.dart';
import 'package:shop_bd/features/authintication/screen/login_screen.dart';

import 'package:shop_bd/utils/constant/size.dart';
import 'package:shop_bd/utils/helper/helper_funtion.dart';

class SuccesfulMassage extends StatelessWidget {
  const SuccesfulMassage(
      {super.key,
      required this.image,
      required this.title,
      required this.sub,
      this.onpressed});
  final String image, title, sub;
  final VoidCallback? onpressed;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: SpacingStyle.paddingwithappbar_height,
        child: Center(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 200,
            ),
            Image(
              image: AssetImage(image),
              width: HelperFunction.screensize().width * 0.4,
            ),
            SizedBox(
              height: AppSizes.spacebetweenitem,
            ),
            Text(
              title,
              style: Theme.of(context).textTheme.headlineLarge,
            ),
            Text("support_hridoy@gmail.com"),
            Text(sub),
            SizedBox(
              height: 30,
            ),
            SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    Get.to(() => LoginScreen());
                  },
                  child: Text("continue"),
                ))
          ],
        )),
      ),
    );
  }
}
