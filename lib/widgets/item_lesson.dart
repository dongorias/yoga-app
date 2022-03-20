import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:yoga_app/utils/app_constant.dart';
import 'package:yoga_app/widgets/image_stack.dart';

import '../models/lesson.dart';
import '../utils/constant.dart';
import '../utils/styles.dart';

Widget itemLesson(Lesson lesson) {
  return Container(
    decoration: BoxDecoration(
        border: Border.all(color: AppColors.kPrimary),
        borderRadius: const BorderRadius.all(Radius.circular(12))),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(child: Container(
          padding: const EdgeInsets.only(top: 10, left: 10, right: 10),
          child: Align(
            child: Container(
                width: 199,
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.all(Radius.circular(24)),
                  color: AppColors.kPrimary.withOpacity(0.38),
                ),
                child: Image.asset(getPathImage("${lesson.image}"))),
          ),
        )),
        Row(
          children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
            Text("Bikram yoga", style: customTextStyle(AppColors.kBlack, FontSizes.s14,)).paddingOnly(left:8, top: 9),
            Text("12 Lessons | Begineer", style: customTextStyle(AppColors.kBlack.withOpacity(.64), FontSizes.s12,)).paddingOnly(left:8,),
          ],).paddingOnly(left: 10),
          Container(
            height: 34,
            width: 34,
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.all(Radius.circular(10)),
              border: Border.all(color: AppColors.kPrimary),
            ),
            child: Padding(padding: const EdgeInsets.all(10), child: SvgPicture.asset(getPathSVG("ic_heart.svg")),),
          ).paddingOnly(left: 54),
        ],).paddingOnly(top: 10),
        Row(mainAxisAlignment: MainAxisAlignment.start, children: [
              FlutterImageStack(
                imageList: listePersonneLoved,
                showTotalCount: true,
                imageSource: ImageSource.asset,
                totalCount: 4,
                itemRadius: 15, // Radius of each images
                itemCount: 4, // Maximum number of images to be shown in stack
                itemBorderWidth: 3, // Border width around the images
              ),
              Text("123,45 people Loved it", style: customTextStyle(AppColors.kBlack.withOpacity(.64), FontSizes.s12,)),
            ],).paddingOnly(left: 15),
       Container(
          height: 42,
          width: 198,
          padding: const EdgeInsets.only(
              top: 6, left: 8, right: 8, bottom: 5),
          child: defaultButton("Start training",
              borderRadius: 10,
              background: AppColors.kPrimaryLite),
        ).paddingOnly(left: 10),
      ],
    ),
  );
}
