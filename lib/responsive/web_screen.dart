import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google/core/constants/assets/icons.dart';
import 'package:google/core/constants/colors/colors.dart';
import 'package:google/widgets/web/search_buttons.dart';
import 'package:google/widgets/translation_buttons.dart';
import 'package:google/widgets/web/web_footer.dart';
import 'package:google/widgets/web/web_search.dart';

class WebScreenLayout extends StatelessWidget {
  const WebScreenLayout({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: AppColor.backgroundColor,
          elevation: 0,
          actions: [
            TextButton(
                onPressed: () {},
                child: const Text(
                  "Gmail",
                  style: TextStyle(
                    color: AppColor.primaryColor,
                    fontWeight: FontWeight.w400,
                  ),
                )),
            const SizedBox(width: 10),
            TextButton(
                onPressed: () {},
                child: const Text(
                  "Images",
                  style: TextStyle(
                    color: AppColor.primaryColor,
                    fontWeight: FontWeight.w400,
                  ),
                )),
            const SizedBox(width: 10),
            IconButton(onPressed: () {}, icon: SvgPicture.asset(AppIcons.moreAppsIcon)),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10).copyWith(right: 10),
              child: MaterialButton(
                onPressed: () {},
                color: const Color(0XFF1A73EB),
                child: const Text(
                  "Sign in",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            )
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.only(left: 5, right: 5),
          child: Column(
            children: [
              SizedBox(height: size.height * 0.25),
              const Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    // since children of column are not supposed to be 'spaced between'
                    Column(
                      children: [
                        Search(),
                        SizedBox(height: 20),
                        SearchButtons(),
                        SizedBox(height: 20),
                        TranslationButtons(),
                      ],
                    ),
                    WebFooter(),
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
