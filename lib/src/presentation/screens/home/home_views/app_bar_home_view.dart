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
            SvgPicture.asset(kSvgArrow, color: AppColors.svgGrey),
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
              topLeft: Radius.circular(15.0), topRight: Radius.circular(15.0)),
        ),
        builder: (context) {
          return Column(
            //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Row(
                //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    // width: 37,
                    // height: 37,
                    child: OutlinedButton(
                      style: OutlinedButton.styleFrom(
                        backgroundColor: AppColors.text,
                        shape: RoundedRectangleBorder(
                          borderRadius: AppSizes.borderRadius10,
                        ),
                      ),
                      onPressed: () => print('close'),
                      child: Icon(Icons.close,color: Colors.white, size: 20, textDirection: TextDirection.ltr,),
                    ),
                  ),
                  MyTextWidget(text: 'Filter options', textStyle: AppSizes.font18_5()),
                  Container(
                    width: 86,
                    height: 37,
                    child: OutlinedButton(
                      style: OutlinedButton.styleFrom(
                        backgroundColor: AppColors.buttonBackgroundOrange,
                        shape: RoundedRectangleBorder(
                          borderRadius: AppSizes.borderRadius10,
                        ),
                      ),
                      onPressed: () => print('close'),
                      child: MyTextWidget(text: 'Done', textStyle: AppSizes.font18_5(color: Colors.white)),
                    ),
                  ),


                ],
              ),
              test(),
            ],
          );
        });
  }

  Widget test() {
    List<String> _locations = ['A', 'B', 'C', 'D']; // Option 2
    String _selectedLocation = ''; // Option 2

    return DropdownButton(
      hint: Text('Please choose a location'), // Not necessary for Option 1
      //value: _selectedLocation,
      onChanged: (newValue) {
        if(newValue != null)
          _selectedLocation = newValue.toString();

      },
      items: _locations.map((location) {
        return DropdownMenuItem(
          child: new Text(location),
          value: location,
        );
      }).toList(),
    );
  }
}
