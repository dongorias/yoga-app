import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:yoga_app/notifiers/app_notifier.dart';
import 'package:yoga_app/sreen/dashboard.dart';
import 'package:yoga_app/sreen/home.dart';
import 'package:yoga_app/sreen/onboarding.dart';
import 'package:yoga_app/utils/app_constant.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]).then((_) {
    runApp(const MyApp());
  });
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375.0, 667.0),
      builder: () {
        return MultiProvider(
          providers: [
            ChangeNotifierProvider(
              create: (context) => AppNotifier(),
            ),
          ],
          child:  MaterialApp(
            debugShowCheckedModeBanner: false,
            theme: ThemeData(
            fontFamily: 'Calibri',
            primaryColor: AppColors.kPrimary,
            backgroundColor: AppColors.kWhite,
          ),
            initialRoute: '/',
            routes: {
              '/dashboard': (context) => const DashboardScreen(),
            },
            home: const OnBoardingScreen(),
          ),
        );
      },
    );
  }
}