import 'package:afazeres/components/main_card.dart';
import 'package:afazeres/utils/app_routes.dart';
import 'package:flutter/material.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Listas de Afazeres'),
      ),
      body: Column(
        children: [
          MainCard(
            onTap: () {
              Navigator.of(context).pushNamed(AppRoutes.daily);
            },
            title: 'Lista Diária',
            icon: Icons.calendar_view_day,
          ),
          MainCard(
            onTap: () {
              Navigator.of(context).pushNamed(AppRoutes.weekly);
            },
            title: 'Lista Semanal',
            icon: Icons.calendar_view_week,
          ),
          MainCard(
            onTap: () {
              Navigator.of(context).pushNamed(AppRoutes.monthly);
            },
            title: 'Lista Mensal',
            icon: Icons.calendar_month,
          ),
        ],
      ),
    );
  }
}
