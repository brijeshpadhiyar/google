import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google/core/constants/assets/icons.dart';
import 'package:google/core/constants/colors/colors.dart';
import 'package:google/widgets/mobile/mobile_footer.dart';
import 'package:google/widgets/signin_button.dart';
import 'package:google/widgets/translation_buttons.dart';
import 'package:google/widgets/web/web_search.dart';

class MobileScreenLayout extends StatelessWidget {
  const MobileScreenLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColor. backgroundColor,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(
            Icons.menu,
            color: Colors.grey,
          ),
          onPressed: () {},
        ),
        title: SizedBox(
          width: size.width * 0.34,
          child: const DefaultTabController(
            length: 2,
            child: TabBar(
              labelColor: AppColor. blueColor,
              unselectedLabelColor: Colors.grey,
              indicatorColor: AppColor. blueColor,
              tabs: [
                Tab(text: 'ALL'),
                Tab(text: 'IMAGES'),
              ],
            ),
          ),
        ),
        actions: [
          IconButton(
              icon: SvgPicture.asset(
                AppIcons.moreAppsIcon,
                color: AppColor. primaryColor,
              ),
              onPressed: () {}),
          const SizedBox(width: 10),
          const SigninButton(),
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
                  Column(
                    children: [
                      Search(),
                      SizedBox(height: 20),
                      TranslationButtons(),
                    ],
                  ),
                  MobileFooter(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
