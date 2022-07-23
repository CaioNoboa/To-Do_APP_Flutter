import 'package:afazeres/pages/daily_page.dart';
import 'package:afazeres/pages/main_page.dart';
import 'package:afazeres/pages/monthly_page.dart';
import 'package:afazeres/pages/weekly_page.dart';
import 'package:afazeres/utils/app_routes.dart';
import 'package:afazeres/utils/theme.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: appTheme,
      routes: {
        AppRoutes.home: (context) => const MainPage(),
        AppRoutes.daily: (context) => const DailyPage(),
        AppRoutes.weekly: (context) => const WeeklyPage(),
        AppRoutes.monthly: (context) => const MonthlyPage(),
      },
      debugShowCheckedModeBanner: false,
    );
  }
}
