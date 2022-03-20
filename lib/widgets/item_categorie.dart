import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get_utils/get_utils.dart';
import 'package:yoga_app/utils/app_constant.dart';
import 'package:yoga_app/utils/styles.dart';

Widget itemCategorie({required String icon, required String name}) {
  return Container(
    height: 74,
    width: 76,
    decoration: BoxDecoration(
      borderRadius: const BorderRadius.all(Radius.circular(12)),
      border: Border.all(color: AppColors.kPrimary),
    ),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SvgPicture.asset(getPathSVG(icon)),
        Text(
          name,
          style: customTextStyle(
              AppColors.kBlack.withOpacity(0.64), FontSizes.s14,
              fontWeight: FontWeight.w300),
        ).paddingOnly(top: 10)
      ],
    ),
  );
}
