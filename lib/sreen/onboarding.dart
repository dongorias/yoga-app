import 'package:after_layout/after_layout.dart' as alm;
import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:yoga_app/utils/app_constant.dart';

import '../components/custom_paint.dart';
import '../utils/styles.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({
    Key? key,
  }) : super(key: key);

  @override
  OnBoardingState createState() => OnBoardingState();
}

class OnBoardingState extends State<OnBoardingScreen>
    with alm.AfterLayoutMixin<OnBoardingScreen> {
  double? currentPage = 0;
  final PageController pageController = PageController();
  List<Widget> pages = [];

  @override
  void initState() {
    super.initState();
    pageController.addListener(() {
      setState(() {
        currentPage = pageController.page;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        Align(
          alignment: Alignment.topLeft,
          child: CustomPaint(
            size: const Size(150, 150),
            painter: HearderLeftPainter(),
          ),
        ),
        Positioned.fill(
          top: -170,
          child: PageView(
            physics: const ClampingScrollPhysics(),
            controller: pageController,
            children: pages.map((e) => e).toList(),
          ),
        ),
        Positioned.fill(
          top: 450,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              DotIndicator(
                  dotSize: 8,
                  currentDotSize: 8,
                  pageController: pageController,
                  indicatorColor: AppColors.kPrimary,
                  pages: pages),
              Container(
                height: 37,
                width: 56,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    color: AppColors.kPrimary.withOpacity(0.38),
                    borderRadius: const BorderRadius.all(Radius.circular(24))),
                child: Text(
                  "Yoga",
                  textAlign: TextAlign.center,
                  style: customTextStyle(AppColors.kBlack, FontSizes.s16,
                      fontWeight: FontWeight.w300),
                ),
              ).paddingOnly(top: 17),
              Text("Time to relax",
                  style: customTextStyle(
                    AppColors.kBlack,
                    FontSizes.s18,
                  )).paddingOnly(top: 17),
              SizedBox(
                  width: 230,
                  child: Text(
                    "Make your brain is powerful and strength",
                    textAlign: TextAlign.center,
                    style: customTextStyle(
                      AppColors.kBlack.withOpacity(0.44),
                      FontSizes.s18,
                    ),
                  )).paddingOnly(top: 17),
              GestureDetector(onTap: (){
                Navigator.pushNamed(context, '/dashboard');
              }, child:Container(
                  width: 171,
                  height: 53,
                  decoration: BoxDecoration(
                      border: Border.all(
                        color: AppColors.kPrimary,
                      ),
                      borderRadius: const BorderRadius.all(Radius.circular(27))),
                  child: Container(
                    height: 42,
                    width: 155,
                    padding: const EdgeInsets.only(
                        top: 6, left: 8, right: 8, bottom: 5),
                    child: defaultButton("Get started",
                        background: AppColors.kPrimary),
                  )).paddingOnly(top: 17)),
              GestureDetector(onTap: (){
                Navigator.pushNamed(context, '/dashboard');
              }, child: Text(
                "Skip",
                textAlign: TextAlign.center,
                style: customTextStyle(
                  AppColors.kBlack.withOpacity(0.58),
                  FontSizes.s18,
                ),
              ).paddingOnly(top: 84),)
            ],
          ),
        ),
      ],
    ));
  }

  @override
  void afterFirstLayout(BuildContext context) {
    pages = [
      SizedBox(
        child: Image.asset(getPathImage("slide1.png")),
      ),
      SizedBox(
        child: Image.asset(getPathImage("slide1.png")),
      ),
      SizedBox(
        child: Image.asset(getPathImage("slide1.png")),
      ),
    ];
    setState(() {});
  }
}
