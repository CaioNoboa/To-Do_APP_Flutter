import 'package:afazeres/components/item_form.dart';
import 'package:afazeres/data/standard_data.dart';
import 'package:afazeres/models/standard_list.dart';
import 'package:flutter/material.dart';

class DailyPage extends StatefulWidget {
  const DailyPage({Key? key}) : super(key: key);

  @override
  State<DailyPage> createState() => _DailyPageState();
}

class _DailyPageState extends State<DailyPage> {
  @override
  Widget build(BuildContext context) {
    List<StandardList> dailyList = standardDailyList;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Lista Diária'),
        actions: [
          ItemAddForm(contexto: context),
        ],
      ),
      body: ListView.builder(
        itemCount: dailyList.length,
        itemBuilder: (context, index) {
          final item = dailyList[index];
          return Column(
            children: <Widget>[
              CheckboxListTile(
                title: Text(
                  item.title,
                  style: TextStyle(
                    color: item.isChecked ? Colors.grey : Colors.black,
                  ),
                ),
                key: Key(item.title),
                value: item.isChecked,
                onChanged: (value) {
                  setState(() {
                    item.isChecked = value!;
                  });
                },
              ),
            ],
          );
        },
      ),
    );
  }
}
