import 'package:ecommerce_concept/src/config/colors/app_colors.dart';
import 'package:ecommerce_concept/src/config/sizes/app_sizes.dart';
import 'package:ecommerce_concept/src/core/utils/strings_constants.dart';
import 'package:ecommerce_concept/src/presentation/widgets/buttons/my_button_circle_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SearchHomeView extends StatelessWidget {
  const SearchHomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size sizeOfScreen = MediaQuery.of(context).size;

    return Padding(
      padding: AppSizes.searchAndQrCodePadding,
        child: Container(
          // width: 300,
           height: AppSizes.searchHeight,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Container(
                  margin: AppSizes.searchPadding,
                  decoration: ShapeDecoration(
                    color: AppColors.containerWhite,
                    shape: RoundedRectangleBorder(
                      borderRadius:
                          BorderRadius.circular(AppSizes.roundedRectangleBorder),
                    ),
                  ),
                  child: Row(
                    children: [
                      /* Icon search */
                      IconButton(
                          icon: SvgPicture.asset(kSvgSearch,
                              color: AppColors.svgOrange),
                          splashRadius: 1,
                          onPressed: () {}),

                      /* Text field search */
                      Expanded(
                        child: TextField(
                          onChanged: (str) => print(str),
                          style: AppSizes.font12_4(),
                          decoration: new InputDecoration.collapsed(
                            hintText: kSearch,
                            hintStyle: TextStyle(color: AppColors.hintTextGrey),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              /* Button qr code */
              MyButtonCircleWidget(
               // padding: EdgeInsets.zero,
                imageSource: kSvgQrCode,
                size: AppSizes.buttonSmallCircle,
                svgColor: AppColors.svgWhite,
                splashColor: AppColors.buttonBackground,
                buttonColor: AppColors.buttonBackgroundOrange,
                onTap: () => print('Qr code'),
              ),
            ],
          ),
        ),
    );
  }
}
