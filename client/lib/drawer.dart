import 'package:flutter/material.dart';
import 'package:logomotive/service.dart';

class LabelDrawer extends StatelessWidget {
  final Function(String) onLabelSelected;

  const LabelDrawer({Key key, this.onLabelSelected}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: FutureBuilder<List<String>>(
        future: LogomotiveService.of(context).labels(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return ListView.builder(
              itemCount: snapshot.data.length,
              itemBuilder: (context, index) {
                final label = snapshot.data[index];

                return ListTile(
                  title: Text(label),
                  onTap: () {
                    Navigator.of(context).pop();
                    onLabelSelected?.call(label);
                  },
                );
              },
            );
          } else {
            return Center(
              child: CircularProgressIndicator(),
            );
          }
        },
      ),
    );
  }
}
