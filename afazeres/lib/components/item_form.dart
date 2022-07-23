import 'package:flutter/material.dart';

class ItemAddForm extends StatefulWidget {
  BuildContext contexto;
  ItemAddForm({Key? key, required this.contexto}) : super(key: key);

  @override
  State<ItemAddForm> createState() => _ItemAddFormState();
}

class _ItemAddFormState extends State<ItemAddForm> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12),
      child: IconButton(
        onPressed: () => (contexto) {
          showModalBottomSheet(
            context: contexto,
            builder: (_) {
              print('object');
              return Card(
                elevation: 5,
                child: Padding(
                  padding: EdgeInsets.all(10),
                  child: Column(
                    children: [
                      TextField(
                        decoration: InputDecoration(
                          labelText: 'Título do afazer',
                        ),
                        onSubmitted: (_) => () {},
                      )
                    ],
                  ),
                ),
              );
            },
          );
        },
        icon: const Icon(Icons.add),
      ),
    );
  }
}
