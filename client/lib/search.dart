import 'package:flutter/material.dart';
import 'package:logomotive/service.dart';

class LabelSearchDelegate extends SearchDelegate<String> {
  @override
  ThemeData appBarTheme(BuildContext context) => Theme.of(context);

  @override
  List<Widget> buildActions(BuildContext context) {
    return [];
  }

  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(
      icon: Icon(Icons.arrow_back_rounded),
      onPressed: () {
        super.close(context, null);
      },
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    return buildLabelList(context);
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    return buildLabelList(context);
  }

  Widget buildLabelList(BuildContext context) {
    return FutureBuilder<List<String>>(
      future: LogomotiveService.of(context).labels(),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          final results = snapshot.data
              .where((label) => label.contains(super.query))
              .toList();
          return ListView.builder(
            itemCount: results.length,
            itemBuilder: (context, index) {
              final result = results[index];
              return ListTile(
                title: Text(result),
                onTap: () => super.close(context, result),
              );
            },
          );
        } else {
          return Center(
            child: CircularProgressIndicator(),
          );
        }
      },
    );
  }
}
