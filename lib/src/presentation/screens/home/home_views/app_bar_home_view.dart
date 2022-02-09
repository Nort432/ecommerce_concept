import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../config/colors/app_colors.dart';
import '../../../../config/sizes/app_sizes.dart';
import '../../../../core/utils/strings_constants.dart';
import '../../../widgets/texts/my_text_widget.dart';

class AppBarHomeView {
  PreferredSizeWidget? appBar() {
    return AppBar(
      title: GestureDetector(
        onTap: () => print('Location'),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(kSvgLocation, color: AppColors.svgOrange),
            MyTextWidget(
              text: kCurrentLocation,
              textStyle: AppSizes.font15_5(),
              margin: AppSizes.appBarHomeTextMargin,
            ),
            SvgPicture.asset(kSvgArrowLocation, color: AppColors.svgGrey),
          ],
        ),
      ),
      actions: [
        Builder(
          builder: (context) => GestureDetector(
            //onTap: () => _onShowSavedProductsViewTapped(context),
            onTap: () => _modalBottomSheetMenu(context),
            child: Padding(
              padding: AppSizes.appBarHomeSvgPadding,
              child: SvgPicture.asset(kSvgFilter, color: AppColors.svgDark),
            ),
          ),
        ),
      ],
    );
  }

  void _modalBottomSheetMenu(context) {
    showModalBottomSheet(
        context: context,
        backgroundColor: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30), topRight: Radius.circular(30)),
        ),
        builder: (context) {
          return Container(
            padding: EdgeInsets.only(left: 44, top: 24, right: 31, bottom: 44),
            height: 375,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              // crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    OutlinedButton(
                      style: OutlinedButton.styleFrom(
                        backgroundColor: AppColors.text,
                        shape: RoundedRectangleBorder(
                          borderRadius: AppSizes.borderRadius10,
                        ),
                      ),
                      onPressed: () => print('close'),
                      child: Icon(
                        Icons.close,
                        color: Colors.white,
                        textDirection: TextDirection.ltr,
                      ),
                    ),
                    MyTextWidget(
                        text: 'Filter options', textStyle: AppSizes.font18_5()),
                    OutlinedButton(
                      style: OutlinedButton.styleFrom(
                        backgroundColor: AppColors.buttonBackgroundOrange,
                        shape: RoundedRectangleBorder(
                          borderRadius: AppSizes.borderRadius10,
                        ),
                      ),
                      onPressed: () => print(kDone),
                      child: MyTextWidget(
                          text: kDone,
                          textStyle: AppSizes.font18_5(color: Colors.white)),
                    ),
                  ],
                ),
                fetchDropDownBoxes(),
              ],
            ),
          );
        });
  }

  Widget fetchDropDownBoxes() {
    return Container(
      padding: EdgeInsets.only(top: 25),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          MyTextWidget(text: kBrand, textStyle: AppSizes.font18_5()),
          dropDownBox(kBrand),
          SizedBox(
            height: 7,
          ),
          MyTextWidget(text: kPrice, textStyle: AppSizes.font18_5()),
          dropDownBox(kPrice),
          SizedBox(
            height: 7,
          ),
          MyTextWidget(text: kSize, textStyle: AppSizes.font18_5()),
          dropDownBox(kSize),
        ],
      ),
    );
  }

  Widget dropDownBox(String name) {
    return InputDecorator(
      decoration: InputDecoration(
          contentPadding: EdgeInsets.all(10),
          border: OutlineInputBorder(
            borderRadius: const BorderRadius.all(Radius.circular(5.0)),
          )),
      child: DropdownButtonHideUnderline(
        child: DropdownButton<String>(
            icon: SvgPicture.asset(kSvgArrowFilter),
            value: '',
            isDense: true,
            isExpanded: true,
            items: fetchLineOfDropDown(name),
            onChanged: (newValue) => print(newValue)),
      ),
    );
  }

  List<DropdownMenuItem<String>> fetchLineOfDropDown(String name) {
    List<DropdownMenuItem<String>> brands = [
      DropdownMenuItem(
          child: MyTextWidget(
              text: 'Select a brand', textStyle: AppSizes.font18_4()),
          value: ''),
      DropdownMenuItem(
          child: MyTextWidget(text: 'Motorola', textStyle: AppSizes.font18_4()),
          value: 'Motorola'),
      DropdownMenuItem(
          child: MyTextWidget(text: 'Xiaomi', textStyle: AppSizes.font18_4()),
          value: 'Xiaomi'),
      DropdownMenuItem(
          child: MyTextWidget(text: 'Apple', textStyle: AppSizes.font18_4()),
          value: 'Apple'),
    ];

    List<DropdownMenuItem<String>> prices = [
      DropdownMenuItem(
          child: MyTextWidget(
              text: 'Select a price', textStyle: AppSizes.font18_4()),
          value: ''),
      DropdownMenuItem(
          child: MyTextWidget(
              text: '${kDollar}100 - ${kDollar}1000',
              textStyle: AppSizes.font18_4()),
          value: '${kDollar}100 - ${kDollar}1000'),
      DropdownMenuItem(
          child: MyTextWidget(
              text: '${kDollar}1000 - ${kDollar}5000',
              textStyle: AppSizes.font18_4()),
          value: '${kDollar}1000 - ${kDollar}5000'),
      DropdownMenuItem(
          child: MyTextWidget(
              text: '${kDollar}5000 - ${kDollar}10000',
              textStyle: AppSizes.font18_4()),
          value: '${kDollar}5000 - ${kDollar}10000'),
    ];

    List<DropdownMenuItem<String>> sizes = [
      DropdownMenuItem(
          child: MyTextWidget(
              text: 'Select a size', textStyle: AppSizes.font18_4()),
          value: ''),
      DropdownMenuItem(
          child: MyTextWidget(
              text: '5 to 6 inches', textStyle: AppSizes.font18_4()),
          value: '5 to 6 inches'),
      DropdownMenuItem(
          child: MyTextWidget(
              text: '6 to 7 inches', textStyle: AppSizes.font18_4()),
          value: '6 to 7 inches'),
      DropdownMenuItem(
          child: MyTextWidget(
              text: '7 to 8 inches', textStyle: AppSizes.font18_4()),
          value: '7 to 8 inches'),
    ];

    switch (name) {
      case kBrand:
        return brands;
      case kPrice:
        return prices;
      case kSize:
        return sizes;
    }

    return brands;
  }
}
