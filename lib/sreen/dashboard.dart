import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';
import 'package:yoga_app/notifiers/app_notifier.dart';
import 'package:yoga_app/sreen/home.dart';
import 'package:yoga_app/utils/app_constant.dart';

import '../components/custom_paint.dart';
import '../utils/styles.dart';


class DashboardScreen extends StatefulWidget {
  const DashboardScreen({
    Key? key,
  }) : super(key: key);

  @override
  DashboardState createState() => DashboardState();
}

class DashboardState extends State<DashboardScreen> with TickerProviderStateMixin {
  late AppNotifier appNotifier;

  @override
  void initState() {
    appNotifier = Provider.of<AppNotifier>(context, listen: false);
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder<NavBarItem>(
        stream: appNotifier.itemNavBarStream,
        initialData: appNotifier.defaultItemNavBar,
        builder: (BuildContext context, AsyncSnapshot<NavBarItem> snapshot) {
          switch (snapshot.data) {
            case NavBarItem.home:
              return const HomeScreen();
            default:
              return const HomeScreen();
          }
        },
      ),
      bottomNavigationBar: StreamBuilder(
        stream: appNotifier.itemNavBarStream,
        initialData: appNotifier.defaultItemNavBar,
        builder: (BuildContext context, AsyncSnapshot<NavBarItem> snapshot) {
          return Container(
                height: 61,
                width: 327,
                margin: const EdgeInsets.symmetric(horizontal: 0, vertical: 20),
                decoration: BoxDecoration(
                    border: Border.all(color: AppColors.kPrimary),
                    borderRadius: const BorderRadius.all(Radius.circular(12))),
                child: Padding(
                  padding: const EdgeInsets.only( left: 28, right: 28,),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          SvgPicture.asset(getPathSVG("ic_home.svg")),
                          SizedBox(height: 16, width: 48, child: CustomPaint(
                            painter: RectanglePainter(),
                            child: Text("Home", style: customTextStyle(
                              AppColors.kBlack,
                              FontSizes.s10,
                              fontWeight: FontWeight.w300,
                            ),textAlign: TextAlign.center,).paddingOnly(top: 3),
                          ),).paddingOnly(top: 3)
                        ],
                      ).paddingOnly(top: 17),
                      Column(
                        children: [
                          SvgPicture.asset(getPathSVG("ic_chart.svg"))
                        ],
                      ).paddingOnly(top: 17),
                      Column(
                        children: [
                          SvgPicture.asset(getPathSVG("ic_sleep.svg"))
                        ],
                      ).paddingOnly(top: 17),
                      Column(
                        children: [
                          SvgPicture.asset(getPathSVG("ic_music.svg"))
                        ],
                      ).paddingOnly(top: 17)
                    ],
                  ),
                ),
              ).paddingOnly(left: 24, right: 24);
        },
      ),
    );
  }
}
