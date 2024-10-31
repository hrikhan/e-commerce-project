import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_widget_cache.dart';
import 'package:shop_bd/common/style/spacing_style.dart';
import 'package:shop_bd/utils/constant/image.dart';
import 'package:shop_bd/utils/constant/size.dart';
import 'package:shop_bd/utils/constant/text_string.dart';
import 'package:shop_bd/utils/helper/helper_funtion.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = HelperFunction.isdark(context);
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: SpacingStyle.paddingwithappbar_height,
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 100),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                //heading
                Container(
                  height: 70,
                  width: 70,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Image(
                        image: AssetImage(
                            dark ? images.darkapplogo : images.darkapplogo)),
                  ),
                ),

                //title
                Text(
                  TextString.loginTitle,
                  style: Theme.of(context).textTheme.headlineLarge,
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  TextString.loginSubtitle,
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
                //form for login
                Form(
                  child: Column(
                    children: [
                      //email
                      TextField(
                        decoration: InputDecoration(
                          prefixIcon: Icon(
                            Icons.email,
                          ),
                          labelText: TextString.loginEmailHint,
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      //password
                      TextField(
                        decoration: InputDecoration(
                          prefixIcon: Icon(
                            Icons.password,
                          ),
                          labelText: TextString.loginPasswordHint,
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          //remember me
                          Row(
                            children: [
                              Checkbox(value: true, onChanged: (value) {}),
                              Text(TextString.rememberme),
                            ],
                          ),

                          //forget

                          TextButton(
                              onPressed: () {},
                              child: Text(TextString.loginForgotPassword))
                        ],
                      ),
                      SizedBox(
                          width: double.infinity,
                          child: ElevatedButton(
                              style: ButtonStyle(),
                              onPressed: () {},
                              child: const Text(TextString.loginButton))),
                      SizedBox(
                        height: AppSizes.marginMedium,
                      ),
                      SizedBox(
                        width: double.infinity,
                        child: OutlinedButton(
                            onPressed: () {},
                            child: const Text(TextString.createaccount)),
                      ),
                    ],
                  ),
                ),

                //divide
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Flexible(
                      child: Divider(
                        color: dark ? Colors.red : Colors.blue,
                        thickness: 0.6,
                        indent: 60,
                        endIndent: 5,
                      ),
                    )
                  ],
                )

                //footter
              ],
            ),
          ),
        ),
      ),
    );
  }
}
