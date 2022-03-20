import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

import '../components/custom_paint.dart';
import '../utils/app_constant.dart';
import '../utils/constant.dart';
import '../utils/styles.dart';
import '../widgets/item_categorie.dart';
import '../widgets/item_lesson.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({
    Key? key,
  }) : super(key: key);

  @override
  HomeState createState() => HomeState();
}

class HomeState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Align(
            alignment: Alignment.topLeft,
            child: CustomPaint(
              size: const Size(100, 100),
              painter: HearderLeftPainter(),
              child: SizedBox(
                height: 150,
                width: 150,
                child: Align(
                  alignment: const Alignment(-0.3, 0),
                  child: Container(
                    height: 36,
                    width: 36,
                    decoration: BoxDecoration(
                        border: Border.all(color: AppColors.kPrimary),
                        borderRadius:
                            const BorderRadius.all(Radius.circular(6))),
                    child: Image.asset(getPathImage("user.png")),
                  ),
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.topRight,
            child: CustomPaint(
              painter: HearderRightPainter(),
              child: SizedBox(
                height: 200,
                width: 200,
                child: Align(
                  alignment: const Alignment(0.5, -0.3),
                  child: Container(
                    height: 36,
                    width: 36,
                    decoration: BoxDecoration(
                        border: Border.all(color: AppColors.kPrimary),
                        borderRadius:
                            const BorderRadius.all(Radius.circular(6))),
                    child: Padding(
                      padding: const EdgeInsets.all(11),
                      child: SvgPicture.asset(getPathSVG("ic_category.svg")),
                    ),
                  ),
                ),
              ),
            ),
          ),
          Positioned.fill(
              top: 170,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      RichText(
                        text: TextSpan(
                          children: <TextSpan>[
                            TextSpan(
                                text: "Hi N",
                                style: customTextStyle(
                                    AppColors.kBlack, FontSizes.s36,
                                    fontWeight: FontWeight.w300,
                                    background: Paint()
                                      ..style = PaintingStyle.fill
                                      ..strokeWidth = 50
                                      ..strokeJoin = StrokeJoin.round
                                      ..color = AppColors.kPrimary
                                          .withOpacity(0.18))),
                            TextSpan(
                              text: "ermeen",
                              style: customTextStyle(
                                AppColors.kBlack,
                                FontSizes.s36,
                                fontWeight: FontWeight.w300,
                              ),
                            ),
                          ],
                        ),
                      ),
                      RichText(
                        text: TextSpan(
                          children: <TextSpan>[
                            TextSpan(
                                text: "Keep G",
                                style: customTextStyle(
                                    AppColors.kBlack, FontSizes.s36,
                                    fontWeight: FontWeight.w300,
                                    background: Paint()
                                      ..style = PaintingStyle.fill
                                      ..strokeWidth = 50
                                      ..strokeJoin = StrokeJoin.round
                                      ..color = AppColors.kPrimary
                                          .withOpacity(0.18))),
                            TextSpan(
                              text: "oing",
                              style: customTextStyle(
                                AppColors.kBlack,
                                FontSizes.s36,
                                fontWeight: FontWeight.w300,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Container(
                        height: 49,
                        width: 280,
                        decoration: BoxDecoration(
                          borderRadius:
                              const BorderRadius.all(Radius.circular(12)),
                          border: Border.all(color: AppColors.kPrimary),
                        ),
                        child: TextField(
                            cursorColor: AppColors.kPrimary,
                            decoration: InputDecoration(
                                prefixIcon: SvgPicture.asset(
                                        getPathSVG("ic_search.svg"))
                                    .paddingOnly(left: 17, right: 17),
                                border: InputBorder.none,
                                hintStyle: customTextStyle(
                                    AppColors.kBlack.withOpacity(0.64),
                                    FontSizes.s14,
                                    fontWeight: FontWeight.w300),
                                contentPadding: const EdgeInsets.only(top: 17),
                                hintText: "Search for your mood"),
                            style: customTextStyle(
                              AppColors.kBlack,
                              FontSizes.s14,
                            )),
                      ),
                      Container(
                        height: 49,
                        width: 49,
                        decoration: BoxDecoration(
                          borderRadius:
                              const BorderRadius.all(Radius.circular(12)),
                          border: Border.all(color: AppColors.kPrimary),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(17),
                          child: SvgPicture.asset(getPathSVG("ic_filter.svg")),
                        ),
                      ).paddingOnly(left: 14)
                    ],
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(bottom: 7, right: 24, top: 14),
                    child: Text(
                      "Catagories for you",
                      style: customTextStyle(
                          AppColors.kBlack.withOpacity(.64), FontSizes.s14,
                          fontWeight: FontWeight.w300),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      itemCategorie(icon: "ic_bot.svg", name: "Bikram"),
                      itemCategorie(icon: "ic_acroyoga.svg", name: "Jnana"),
                      itemCategorie(icon: "ic_cobra.svg", name: "Kundalini"),
                      itemCategorie(icon: "ic_locust.svg", name: "Hatha"),
                    ],
                  ).paddingOnly(top: 8, right: 24),
                  Padding(
                    padding:
                        const EdgeInsets.only(bottom: 7, right: 24, top: 18),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Featured for you",
                          style: customTextStyle(
                              AppColors.kBlack.withOpacity(.64), FontSizes.s14,
                              fontWeight: FontWeight.w300),
                        ),
                        Text(
                          "See all",
                          style: customTextStyle(
                              AppColors.kBlue.withOpacity(0.64), FontSizes.s12),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                      height: 270,
                      child: ListView.builder(
                          itemCount: listLesson.length,
                          shrinkWrap: true,
                          scrollDirection: Axis.horizontal,
                          physics: const AlwaysScrollableScrollPhysics(),
                          itemBuilder: (BuildContext context, int index) {
                            return itemLesson(listLesson[index])
                                .paddingOnly(right: 9);
                          }))
                ],
              )),
        ],
      ).paddingOnly(left: 24),
    );
  }
}
