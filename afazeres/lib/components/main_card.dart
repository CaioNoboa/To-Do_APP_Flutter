import 'package:flutter/material.dart';

class MainCard extends StatelessWidget {
  final Function() onTap;
  final String title;
  final IconData icon;

  const MainCard({
    Key? key,
    required this.onTap,
    required this.title,
    required this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      margin: const EdgeInsets.symmetric(
        vertical: 10,
        horizontal: 15,
      ),
      child: ListTile(
        title: Text(
          title,
          style: Theme.of(context).textTheme.headline6,
        ),
        trailing: Icon(icon),
        onTap: onTap,
      ),
    );
  }
}
