import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google/core/constants/assets/icons.dart';
import 'package:google/core/constants/assets/images.dart';
import 'package:google/core/constants/colors/colors.dart';
import 'package:google/screens/search_screen.dart';

class Search extends StatelessWidget {
  const Search({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: Image.asset(
              AppImages.googleLogo,
              height: size.height * 0.12,
            ),
          ),
          const SizedBox(height: 20),
          SizedBox(
            width: size.width > 768 ? size.width * 0.4 : size.width * 0.9,
            child: TextFormField(
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                border: const OutlineInputBorder(
                  borderSide: BorderSide(color: AppColor.searchBorder),
                  borderRadius: BorderRadius.all(
                    Radius.circular(30),
                  ),
                ),
                prefixIcon: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SvgPicture.asset(
                    AppIcons.searchIcon,
                    color: AppColor.searchBorder,
                    width: 1,
                    height: 1,
                  ),
                ),
                suffixIcon: Padding(
                  padding: const EdgeInsets.all(8),
                  child: SvgPicture.asset(
                    AppIcons.micIcon,
                  ),
                ),
                
              ),
                onFieldSubmitted: (val) {
                if (val != "") {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => SearchScreen(
                        searchQuery: val.trim(),
                      ),
                    ),
                  );
                }
              },
            ),
          ),
          const SizedBox(height: 20),

        ],
      ),
    );
  }
}
